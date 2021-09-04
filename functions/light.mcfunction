##
 # light.mcfunction
 # 
 #
 # Created by Zorillac.
##

# {Pos:List[double, double, double], id:int, level:int, force:byte}

# Execute only if minecraft is in 1.17.x
execute if score version dynllib matches 117 run function dynlightslib:core/commands/light/run
execute unless score version dynllib matches 117 run function dynlightslib:core/others/error