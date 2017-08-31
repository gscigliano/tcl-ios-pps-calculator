# tcl-ios-pps-calculator
quick tcl script to run on ios/nxos to determine Output unicast packets towards a port

<pre>
can be modified quickly to account for different stats

I have used this as a way to determine pps when snmp is not an option.

*** It's suggested to clear counters before running to avoid having tcl complain about integers being too big when the delta is calculated

Sample output

- NX
unix time 1504185785 interface po16 newpktsout 194675207921 oldpktsout 194674879413     PPS is 328508

--------------------------------------------------------------------------------
Port                                 InOctets                      InUcastPkts
--------------------------------------------------------------------------------
Po16                            6188482257485                      91726328908

--------------------------------------------------------------------------------
Port                              InMcastPkts                      InBcastPkts
--------------------------------------------------------------------------------
Po16                                    59823                                0

--------------------------------------------------------------------------------
Port                                OutOctets                     OutUcastPkts
--------------------------------------------------------------------------------
Po16                           20623931924518                     194675576825

--------------------------------------------------------------------------------
Port                             OutMcastPkts                     OutBcastPkts
--------------------------------------------------------------------------------
Po16                                  7972920                              519

unix time 1504185786 interface po16 newpktsout 194675576825 oldpktsout 194675207921     PPS is 368904

--------------------------------------------------------------------------------
Port                                 InOctets                      InUcastPkts
--------------------------------------------------------------------------------
Po16                            6188490442957                      91726450731

--------------------------------------------------------------------------------
Port                              InMcastPkts                      InBcastPkts
--------------------------------------------------------------------------------
Po16                                    59823                                0

--------------------------------------------------------------------------------
Port                                OutOctets                     OutUcastPkts
--------------------------------------------------------------------------------
Po16                           20623972133221                     194675886290

--------------------------------------------------------------------------------
Port                             OutMcastPkts                     OutBcastPkts
--------------------------------------------------------------------------------
Po16                                  7972924                              519

unix time 1504185787 interface po16 newpktsout 194675886290 oldpktsout 194675576825     PPS is 309465

- IOS

unix time 1504185201 interface po1 newpktsout 3631504 oldpktsout 3626997        PPS is 4507
unix time 1504185202 interface po1 newpktsout 3636361 oldpktsout 3631504        PPS is 4857
unix time 1504185203 interface po1 newpktsout 3642704 oldpktsout 3636361        PPS is 6343
unix time 1504185204 interface po1 newpktsout 3649372 oldpktsout 3642704        PPS is 6668
unix time 1504185205 interface po1 newpktsout 3658178 oldpktsout 3649372        PPS is 8806
unix time 1504185206 interface po1 newpktsout 3664711 oldpktsout 3658178        PPS is 6533
unix time 1504185207 interface po1 newpktsout 3670464 oldpktsout 3664711        PPS is 5753
unix time 1504185208 interface po1 newpktsout 3675966 oldpktsout 3670464        PPS is 5502
unix time 1504185209 interface po1 newpktsout 3682190 oldpktsout 3675966        PPS is 6224

</pre>
