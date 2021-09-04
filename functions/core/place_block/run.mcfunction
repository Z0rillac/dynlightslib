##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Tests for water, air or force mod and run
execute if block ~ ~ ~ water run function dynlightslib:core/place_block/water
execute if block ~ ~ ~ #dynlightslib:air run function dynlightslib:core/place_block/air
execute if data storage dynlightslib:args {root:{force:True}} unless block ~ ~ ~ air unless block ~ ~ ~ water run function dynlightslib:core/place_block/air