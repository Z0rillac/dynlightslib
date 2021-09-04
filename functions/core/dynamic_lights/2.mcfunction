##
 # 2.mcfunction
 # 
 #
 # Created by Zorillac.
##

execute store result score $x dynllib.temp run data get entity @s Pos[0]
execute store result score $y dynllib.temp run data get entity @s Pos[1]
execute store result score $z dynllib.temp run data get entity @s Pos[2]

scoreboard players set $moved dynllib.temp 0
execute unless score $x dynllib.temp = @s dynllib.x run scoreboard players set $moved dynllib.temp 1
execute unless score $y dynllib.temp = @s dynllib.y run scoreboard players set $moved dynllib.temp 1
execute unless score $z dynllib.temp = @s dynllib.z run scoreboard players set $moved dynllib.temp 1
execute if score $moved dynllib.temp matches 1 run function dynlightslib:core/dynamic_lights/3 