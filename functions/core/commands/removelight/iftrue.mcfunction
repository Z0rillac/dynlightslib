##
 # iftrue.mcfunction
 # 
 #
 # Created by Zorillac.
##

# Set the light as to be deleted
data modify storage dynlightslib:lights root[0].delete set value True
data modify storage dynlightslib:temp root.lights append from storage dynlightslib:lights root[0]
data remove storage dynlightslib:lights root[0]