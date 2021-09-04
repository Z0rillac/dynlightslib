##
 # 2.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Deletes the block and the data of the storage
data modify entity @e[tag=dynlightslib.marker,limit=1] Pos set from storage dynlightslib:lights root[0].Pos
execute at @e[tag=dynlightslib.marker,limit=1] run function dynlightslib:core/delete_block/run
data remove storage dynlightslib:lights root[0]