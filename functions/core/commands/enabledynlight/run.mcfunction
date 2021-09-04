##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##

scoreboard players set @s dynllib.dynlight 1
execute store result score @s dynllib.uuid run data get entity @s UUID[0]
execute unless score @s dynllib.level matches 0..15 run scoreboard players set @s dynllib.level 15
function dynlightslib:core/dynamic_lights/3