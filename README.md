# Dynlightslib
Welcome to Dynlightslib.
Dynlightslib is a mcfunction library that allows you to easily manage lights in Minecraft.
### [Download](https://github.com/Z0rillac/dynlightslib/archive/refs/heads/main.zip)

## Contents
Dynlightslib integrete three mecanism for the moment:
 - Lights
 - Temporary lights
 - Dynamic lights
### Lights
Lights are created with an identifier. They can be deleted at any time with their identifier.
### Temporary lights
Temporary lights have a duration chosen by the user, and disappear at the end of this duration.
### Dynamic lights
The most interesting. The dynamic lights are switchable and entity specific. You can activate a dynamic light on a player or on an area effect cloud for example, to be manipulated.

## Why sould I use Dynlightslib ?
### Performance.
Dynlightslib is first of all the only library allowing to manage lights dynamically in Minecraft. Thanks to its storage-based and not entity-based operation, it allows for much better performance, such as being able to manage more than 1000 lights each tick, without any optimization mod and without lag (test performed in a classic world, without spawn gamerule, with Intel Core i5 7200U + processor rendering, Minecraft Vanilla)

## How I add it to my datapack ?
Drag the [Downloaded file](https://github.com/Z0rillac/dynlightslib/archive/refs/heads/main.zip) into the `<datapack>/data folder`.
In the `<datapack>/data/minecraft/tags/functions` folder, add `"dynlightslib:core/load"` to `load.json`. Add `"dynlightslib:core/tick"` in `tick.json` preferably after the other files to avoid tick delays. Otherwise you can manually execute these functions in the mcfunction files of your datapack.

## How to credits
It is strongly recommended that the project be credited.
```
Uses Dynlightslib by Zorillac
https://github.com/Z0rillac/Dynlightslib
```
This program is licensed under the MIT license.
