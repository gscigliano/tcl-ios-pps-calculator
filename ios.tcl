tclsh

set LOOPS 10	; # how many times
set INTERFACE "po1"	; # which interface
set INTERVAL 1000 ; # milliseconds interval - how often you take samples

set OLDOutUcastPkts 0	; # dont touch
set OLDcurrTimeMS 0	; # dont touch

for {set i 0} {$i < $LOOPS} {incr i} {
 set OutUcastPkts [string trim [exec "sh int $INTERFACE counters  | b Out"] "\n" ]		; # looking for OutUcastPkts
 set OutUcastPkts [regexp -inline -all -- {\S+} $OutUcastPkts]
 set OutUcastPkts [lindex $OutUcastPkts 7]
 set currTimeMS [clock clicks -milliseconds] ; # at what time counters were taken and parsed, in milliseconds to be precise 

 if {$i !=0 } {
  puts "clock clicks (ms) $currTimeMS interface $INTERFACE newpktsout $OutUcastPkts oldpktsout $OLDOutUcastPkts"
  puts "UTC time [clock format [clock seconds] -format %H:%M:%S] and PPS is [expr ($OutUcastPkts-$OLDOutUcastPkts)*(1/(($currTimeMS-$OLDcurrTimeMS)/1000.0))]" 
 }
 set OLDOutUcastPkts $OutUcastPkts
 set OLDcurrTimeMS $currTimeMS

 after $INTERVAL
}
