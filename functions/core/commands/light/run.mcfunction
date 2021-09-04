##
 # light.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Places the light
data modify entity @e[tag=dynlightslib.marker,limit=1] Pos set from storage dynlightslib:args root.Pos
execute at @e[tag=dynlightslib.marker,limit=1] run function dynlightslib:core/place_block/run

# Saves the informations of the dynamic light
data modify storage dynlightslib:temp root set value {type:1b, id:0, Pos:[], delete:False}
data modify storage dynlightslib:temp root.Pos set from storage dynlightslib:args root.Pos
data modify storage dynlightslib:temp root.id set from storage dynlightslib:args root.id
data modify storage dynlightslib:lights root append from storage dynlightslib:temp root