##
 # check.mcfunction
 # 
 #
 # Created by Zorillac.
##

execute store result score $id dynllib.temp run data get storage dynlightslib:lights root[0].id
execute if score $id dynllib.temp = $todelete dynllib.temp run function dynlightslib:core/commands/removelight/iftrue
execute unless score $id dynllib.temp = $todelete dynllib.temp run function dynlightslib:core/commands/removelight/iffalse