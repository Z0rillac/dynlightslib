##
 # removelight.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Setup
data modify storage dynlightslib:temp root set value {lights:[]}
execute store result score $todelete dynllib.temp run data get storage dynlightslib:args root.id

# Run
function dynlightslib:core/commands/removelight/loop
data modify storage dynlightslib:lights root set from storage dynlightslib:temp root.lights