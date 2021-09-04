##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Checks if the orginal block is air or water and replace it
execute if block ~ ~ ~ light[waterlogged=false] run setblock ~ ~ ~ air
execute if block ~ ~ ~ light[waterlogged=true] run setblock ~ ~ ~ water