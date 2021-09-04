##
 # load.mcfunction
 #
 #
 # Created by Zorillac.
##

#dph declarations
#alias entity marker @e[tag=dynlightslib.marker,limit=1]

# Setup
function dynlightslib:core/others/vcheck/run

execute unless data storage dynlightslib:lights {set:True} run data merge storage dynlightslib:lights {"set":True, root:[]}
data merge storage dynlightslib:args {"set":True, root:{Pos:[0d,0d,0d],Duration:20,id:0,level:15,force:False}}
data merge storage dynlightslib:temp {"set":True, root:{}}

scoreboard objectives add dynllib dummy
scoreboard objectives add dynllib.temp dummy
scoreboard objectives add dynllib.dynlight dummy
scoreboard objectives add dynllib.uuid dummy
scoreboard objectives add dynllib.x dummy
scoreboard objectives add dynllib.y dummy
scoreboard objectives add dynllib.z dummy
scoreboard objectives add dynllib.level dummy

kill @e[tag=dynlightslib.marker]
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dynlightslib.marker"]}