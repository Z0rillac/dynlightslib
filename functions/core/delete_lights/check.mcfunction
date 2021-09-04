##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Checks if the light should be removed
scoreboard players add lights dynllib 1
execute store result score $type dynllib.temp run data get storage dynlightslib:lights root[0].type
execute if score $type dynllib.temp matches 1 run function dynlightslib:core/delete_lights/normallight
execute if score $type dynllib.temp matches 2 run function dynlightslib:core/delete_lights/templight