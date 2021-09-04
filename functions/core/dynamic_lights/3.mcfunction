##
 # 3.mcfunction
 # 
 #
 # Created by Zorillac.
##

execute store result score @s dynllib.x run data get entity @s Pos[0]
execute store result score @s dynllib.y run data get entity @s Pos[1]
execute store result score @s dynllib.z run data get entity @s Pos[2]
execute store result storage dynlightslib:args root.id int 1 run scoreboard players get @s dynllib.uuid
execute store result storage dynlightslib:args root.Pos[0] double 1 run scoreboard players get @s dynllib.x
execute store result storage dynlightslib:args root.Pos[1] double 1 run scoreboard players get @s dynllib.y
execute store result storage dynlightslib:args root.Pos[2] double 1 run scoreboard players get @s dynllib.z
execute store result storage dynlightslib:args root.level int 1 run scoreboard players get @s dynllib.level
data modify storage dynlightslib:args root.force set value False
function dynlightslib:core/commands/removelight/run
function dynlightslib:core/commands/light/run