# tcl-ios-pps-calculator
quick tcl script to run on ios/nxos to determine Output unicast packets towards a port

<pre>
can be modified quickly to account for different stats

I have used this as a way to determine pps when snmp is not an option.

*** It's suggested to clear counters before running to avoid having tcl complain about integers being too big when the delta is calculated

Sample output

- NX
--------------------------------------------------------------------------------
Port                                 InOctets                      InUcastPkts
--------------------------------------------------------------------------------
Po16                            6431139063963                      95304109569

--------------------------------------------------------------------------------
Port                              InMcastPkts                      InBcastPkts
--------------------------------------------------------------------------------
Po16                                    61977                                0

--------------------------------------------------------------------------------
Port                                OutOctets                     OutUcastPkts
--------------------------------------------------------------------------------
Po16                           21648073098031                     204146719607

--------------------------------------------------------------------------------
Port                             OutMcastPkts                     OutBcastPkts
--------------------------------------------------------------------------------
Po16                                  8172105                              519


--------------------------------------------------------------------------------
Port                                 InOctets                      InUcastPkts
--------------------------------------------------------------------------------
Po16                            6431142998751                      95304167940

--------------------------------------------------------------------------------
Port                              InMcastPkts                      InBcastPkts
--------------------------------------------------------------------------------
Po16                                    61977                                0

--------------------------------------------------------------------------------
Port                                OutOctets                     OutUcastPkts
--------------------------------------------------------------------------------
Po16                           21648082707587                     204146815357

--------------------------------------------------------------------------------
Port                             OutMcastPkts                     OutBcastPkts
--------------------------------------------------------------------------------
Po16                                  8172109                              519

clock clicks (ms) 1504245652042 interface po16 newpktsout 204146815357 oldpktsout 204146719607
UTC time 06:00:52 and PPS is 78099.51060358892
...
clock clicks (ms) 1504245653273 interface po16 newpktsout 204146922675 oldpktsout 204146815357
UTC time 06:00:53 and PPS is 87179.52883834281
....
clock clicks (ms) 1504245654510 interface po16 newpktsout 204147142268 oldpktsout 204146922675
UTC time 06:00:54 and PPS is 177520.6143896524


- IOS

clock clicks (ms) 1006143863 interface po1 newpktsout 778923558 oldpktsout 778875605
UTC time 06:01:14 and PPS is 23680.4938272
clock clicks (ms) 1006145906 interface po1 newpktsout 778967642 oldpktsout 778923558
UTC time 06:01:15 and PPS is 21578.0714635
clock clicks (ms) 1006147935 interface po1 newpktsout 779016383 oldpktsout 778967642
UTC time 06:01:16 and PPS is 24022.178413


</pre>
