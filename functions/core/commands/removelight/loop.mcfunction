##
 # loop.mcfunction
 # 
 #
 # Created by Zorillac.
##

execute if data storage dynlightslib:lights root[] run function dynlightslib:core/commands/removelight/check

#loop
execute if data storage dynlightslib:lights root[] run function dynlightslib:core/commands/removelight/loop