#! /usr/bin/tclsh
set onerun [lindex $argv 0]
set niter 0

set nitera 0
set niterb 0
if [catch {open  $env(PWD)/junk w} logid ] {
 set logid -1
} else {
  puts $logid $onerun
}

# Extract timestepnumber for ckptA file

if [catch {open $env(PWD)/pickup.ckptA.meta r} ckpta] {
 set ckpta -1
 set nitera -1
 set timeinta -1
}
puts $logid
puts $ckpta
if {  $ckpta > -1 } {
   while { [gets $ckpta line] >= 0 } {
    if { [string first "timestepnumber" [string tolower $line ] ] > -1 } {
	   set nitera [lindex [ split [lindex [ split $line \[ ] 1] \] ] 0 ]
    }
    if { [string first "timeinterval" [string tolower $line ] ] > -1 } {
	   set timeinta [lindex [ split [lindex [ split $line \[ ] 1] \] ] 0 ]    
    }
   }
  close $ckpta
}
# Extract timestepnumber from ckptB file
if [catch { open $env(PWD)/pickup.ckptB.meta r} ckptb ] {
 set ckptb -1
 set niterb -1
 set timeintb -1
}
if {$ckptb > -1 } {
   while {$ckptb > -1 && [gets $ckptb line] >= 0 } {
    if { [string first "timestepnumber" [string tolower $line] ] > -1 } {
	   set niterb [lindex [ split [lindex [ split $line \[ ] 1] \] ] 0 ]
    }
# timeinterval will be same in both files but want deltat set if only one exists
    if { [string first "timeinterval" [string tolower $line ] ] > -1 } {
	   set timeintb [lindex [ split [lindex [ split $line \[ ] 1] \] ] 0 ]
     }
   }
   close $ckptb
}


# set niter to larger of the two
if { $nitera > $niterb } {
  set niter $nitera
  set suff 'ckptA'
  set deltat [expr $timeinta/$niter ]
} elseif { $niterb > $nitera } {
   set niter $niterb
   set suff 'ckptB' 
   set deltat [expr $timeintb/$niter ]
} elseif {$niterb == $nitera } {
  if {$nitera != -1 } {
   set niter $nitera
   set suff 'ckptA'
   set deltat [expr $timeinta/$niter ]
  }  
}



# If niter > 0 (i.e. got a pickup file) then edit niter0= in file "data"
if { $niter > 0 } {
  puts $logid "$timeinta, $timeintb, $niter"
  exec cp data data.copy
  set  dtf [open $env(PWD)/data.copy]
  set  dtfn [open $env(PWD)/data w]
  while {  [gets $dtf line] >= 0 } {
# if niter0= line and not commented out then edit value
     if {  [string first "#" $line ] < 0 && [string first "niter0" [string tolower $line] ] > -1 } {
       set line " niter0=$niter,"
     }
     if {  [string first "#" $line ] < 0 && [string first "endtime" [string tolower $line] ] > -1 } {
	 set endtime [expr ($niter+$onerun)*$deltat]
        puts $logid "$niter,$onerun,$deltat"
       puts $logid "endtime for this run is $endtime"
       set line " endTime=$endtime,"
     }
# the user should ensure that  
# pickupSuff line is present in data but commented out when niter0=0
     if {  [string first "pickupsuff" [string tolower $line ]] > -1 }   {
       set line " pickupSuff=$suff,"
     }
     puts $dtfn $line
  }
#  exec rm data.copy 
  close $dtf
  close $dtfn   
}
set nitid [open nit_record  w ]
puts $nitid $niter
close $nitid
close  $logid
return 

}

