##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Setup
data modify storage dynlightslib:temp root set value {lights:[]}
scoreboard players set lights dynllib 0

# Run
function dynlightslib:core/delete_lights/loop
data modify storage dynlightslib:lights root set from storage dynlightslib:temp root.lights