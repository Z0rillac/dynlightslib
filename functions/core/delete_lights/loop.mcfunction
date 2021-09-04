##
 # delete_lights.mcfunction
 # 
 #
 # Created by Zorillac.
##

execute if data storage dynlightslib:lights root[] run function dynlightslib:core/delete_lights/check

#loop
execute if data storage dynlightslib:lights root[] run function dynlightslib:core/delete_lights/loop