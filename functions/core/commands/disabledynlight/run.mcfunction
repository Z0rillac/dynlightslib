##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##

scoreboard players set @s dynllib.dynlight 0
execute store result storage dynlightslib:args root.id int 1 run scoreboard players get @s dynllib.uuid
function dynlightslib:core/commands/removelight/run