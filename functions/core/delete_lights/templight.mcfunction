##
 # templight.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Checks if the light should be removed
execute store result score $killat dynllib.temp run data get storage dynlightslib:lights root[0].killat
execute if score timestamp dynllib >= $killat dynllib.temp run function dynlightslib:core/delete_lights/iftrue
execute if score timestamp dynllib < $killat dynllib.temp run function dynlightslib:core/delete_lights/iffalse