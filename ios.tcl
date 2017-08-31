tclsh

set LOOPS 10	; # how many times
set INTERFACE "po1"	; # which interface
set OLDOutUcastPkts 0	; # dont touch

for {set i 0} {$i < $LOOPS} {incr i} {
 set OutUcastPkts [string trim [exec "sh int $INTERFACE counters  | b Out"] "\n" ]
 set OutUcastPkts [regexp -inline -all -- {\S+} $OutUcastPkts]
 set OutUcastPkts [lindex $OutUcastPkts 7]
 if {$i ==0 } { puts "unix time [clock seconds] interface $INTERFACE pktsout $OutUcastPkts" 
 } else { 
  puts "unix time [clock seconds] interface $INTERFACE newpktsout $OutUcastPkts oldpktsout $OLDOutUcastPkts\tPPS is [expr ($OutUcastPkts-$OLDOutUcastPkts)]"
 }
 set OLDOutUcastPkts $OutUcastPkts
 after 1000
}
