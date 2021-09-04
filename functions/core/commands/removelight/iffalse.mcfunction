##
 # iffalse.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Just pass
data modify storage dynlightslib:temp root.lights append from storage dynlightslib:lights root[0]
data remove storage dynlightslib:lights root[0]