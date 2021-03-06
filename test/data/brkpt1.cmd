set trace-commands on
# 
# Test of breakpoint handling
#
# Test the simplest of breakpoints
break 22
info break
################################################################
####  Try setting breakpoints outside of the file range...
break 99
break 0
# 
# list breakpoints
L
###############################################################
#### Test display status...
delete 1
info break
break 22
info break
###############################################################
#### *** Test using file:line format on break...
break ../example/dbg-test1.sh:23
break ../example/dbg-test1.sh:0
break ../example/dbg-test1.sh:1955
# multiple breakpoints on the same line are ok
break 23
info break
###############################################################
# disable 2 5
# info break
# enable 2 6
# delete 2 6
#### Test info break...
# info break 11
# info break foo
# info break 5
# d 23
# L
quit
