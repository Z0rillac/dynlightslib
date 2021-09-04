##
 # ticklight.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Places the light
data modify entity @e[tag=dynlightslib.marker,limit=1] Pos set from storage dynlightslib:args root.Pos
execute at @e[tag=dynlightslib.marker,limit=1] run function dynlightslib:core/place_block/run

# Saves the informations of the dynamic light
data modify storage dynlightslib:temp root set value {type:2b, killat:0, Pos:[]}
execute store result score $duration dynllib.temp run data get storage dynlightslib:args root.Duration
scoreboard players operation $duration dynllib.temp += timestamp dynllib
execute store result storage dynlightslib:temp root.killat long 1 run scoreboard players get $duration dynllib.temp
data modify storage dynlightslib:temp root.Pos set from storage dynlightslib:args root.Pos
data modify storage dynlightslib:lights root append from storage dynlightslib:temp root