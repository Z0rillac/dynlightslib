##
 # disable_dynlight.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Execute only if minecraft is in 1.17.x
execute if score version dynllib matches 117 run function dynlightslib:core/commands/disabledynlight/run
execute unless score version dynllib matches 117 run function dynlightslib:core/others/error