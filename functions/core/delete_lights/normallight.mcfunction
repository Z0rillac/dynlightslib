##
 # normallight.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Checks if the light should be removed
execute store result score $delete dynllib.temp run data get storage dynlightslib:lights root[0].delete
execute if score $delete dynllib.temp matches 1 run function dynlightslib:core/delete_lights/iftrue
execute if score $delete dynllib.temp matches 0 run function dynlightslib:core/delete_lights/iffalse