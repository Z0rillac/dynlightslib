# Dynlightslib
Welcome to the documentation of Dynlightslib.
Dynlightslib is a mcfunction library that allows you to easily manage lights in Minecraft. It integrates three mechanisms: lights, temporary lights, and dynamic lights. This library is based on the manipulation of light data in a storage and not on several entities. This greatly optimizes its performance because there is no summon for each light.
## Installation
Drag the library into the `<datapack>/data folder`.
In the `<datapack>/data/minecraft/tags/functions` folder, add `"dynlightslib:core/load"` to `load.json`. Add `"dynlightslib:core/tick"` in `tick.json` preferably after the other files to avoid tick delays. Otherwise you can manually execute these functions in the mcfunction files of your datapack.
# Functions
You can access the library functions directly from the functions folder but you can also access them in `core/commands/<function>/run` to avoid version checking.

The function arguments are in dynlightslib:args in root. you can modify them with these commands :
```
data modify storage dynlightslib:args root set value {<argument>:<value>}
```
```
data modify storage dynlightslib:args root.<argument> set value <value>
```
```
execute store result storage dynlightlib:args root.<argument> <type> 1 run ...
```
Some arguments must be of a certain type. You can format your values in this way :
```
execute store result .. .. .. <the type> 1 run <a get command>
```
## light
Allows you to create a light with an id.
**Arguments:**
```
Pos: List[double, double, double] -> The position of the light, vector MUST be a double.
id: int -> the ID of the light
level: int -> The light level 0..15
force: bool -> If the light can replace a block if it is not air or water
```
**Exemple:**
```
data modify storage dynlightslib:args root set value {Pos:[10d, 80d, -15d], id:10, level:15, force:False}
function  dynlightslib:light
```
## temporary_light
Allows you to create a temporary light.
**Arguments:**
```
Pos: List[double, double, double] -> The position of the light, vector MUST be a double.
Duration: int -> Duration in tick
level: int -> The light level 0..15
force: bool -> If the light can replace a block if it is not air or water
```
## remove_light
Allow you to delete a light.
**Arguments:**
```
id: int -> The id of the light to delete
```
## enable_dynlight
Toggle on dynamic light for the executor
**Exemple:**
```
execute as @e[tag=has_torch] run function dynlightslib:enable_dynlight
```
## disable_dynlight
Toggle off dynamic light for the executor
**Exemple:**
```
execute as @e[tag=!has_torch] run function dynlightslib:disable_dynlight
```