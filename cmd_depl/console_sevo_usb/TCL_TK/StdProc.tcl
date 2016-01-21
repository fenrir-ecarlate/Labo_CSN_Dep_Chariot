## Name: StdOut
##
## Description:
##
## Switch stdout handling by puts command from the usual
## behaviour to a state where stdout is redefined to be
## another file.
##
## Native puts command error handling is unimpaired and
## a dangling filehandle is never generated.
##
##
## Calling convention:
##
##   StdOut off          - redirects stdout to nowhere
##
##   StdOut off /tmp/foo - redirects stdout to /tmp/foo
##
##   StdOut on           - restores normal behaviour
##
##
## by: Phil Ehrens for the LIGO Lab at Caltech 09/02
## valuable contributions by: Bruce Hartweg
##********************************************************
proc StdOut { switch { file "" } } {
  if { ! [ llength [ info command __puts ] ] && \
         [ string equal off $switch ] } {
    rename puts __puts
    if { [ string length $file ] } {
      eval [ subst -nocommands {proc puts { args } {
        set fid [ open $file a+ ]
        if { [ llength \$args ] > 1 && \
             [ lsearch \$args stdout ] == 0 } {
          set args [ lreplace \$args 0 0 \$fid ]
        } elseif {  [ llength \$args ] == 1 } {
          set args [ list \$fid \$args ]
        }
        if { [ catch {
          eval __puts \$args
        } err ] } {
          close \$fid
          return -code error \$err
        }
        close \$fid
      }} ]
    } else {
      eval [ subst -nocommands {proc puts { args } {
        if { [ llength \$args ] > 1 && \
             [ lsearch \$args stdout ] == 0 || \
             [ llength \$args ] == 1 } {
          # no-op
        } else {
          eval __puts \$args
        }
      }} ]
    }
  } elseif { [ llength [ info command __puts ] ] && \
             [ string equal on $switch ] } {
     rename puts {}
     rename __puts puts
  }
}