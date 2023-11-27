# Easy World Portals
###### Version 2.0

## Introduction
Easy World Portals is a Minecraft 1.20 datapack which smoothly mimics Valve-style world portals in Minecraft custom maps. Think the [Immersive Portals mod](https://www.curseforge.com/minecraft/mc-mods/immersive-portals-mod) but in very limited circumstances.

![Easy Immersive Portals tech demo loop](https://media.giphy.com/media/dxCX2rSzDldCnzxSr5/giphy.gif)

## Installing the datapack
Back up your world. This datapack can seriously destroy worlds if/when things hit the fan.

Download a zip file of this repository and extract. Copy the `portal` folder into your `datapacks` directory. After enabling, use your main datapack to call `function portal:tick` once every tick. Alternatively, uncomment `function __tick__() { tick(); }` in portal.jmc and recompile to run the pack standalone.

## Trigger basics

## Flags
Give yourself the portal_log tag to recieve portal logging messages.

## Mcfunction script headers
Scripts all have a 3+ line header in the following format:
- Description: A small description of what the script does.
- Inputs: A `/say` command which details the macros the function requires as inputs. These lines can be uncommented for debugging purposes.
- Entity descriptor: A description of the entity which should be running this script.

## Limitations
There are a lot of limitations with this project. I may be able to improve upon some of these down the road, but quite a few limitations are baked in to the concept itself.
- Illusion zones are limited to opening one at a time. Additional requests to open IZs are treated as errors.
- Teleportation triggers do not properly handle direction when entered vertically. Please use custom `on_trigger` definitions in these cases.
- Teleportation triggers do not activate for non-player entities for performance reasons. This can be modified in the datapack source.
- Any illusion zones render blocks alone. No entities are supported at the moment. 
- Teleportation triggers will lead to "pop-in" for entites not teleported. For example, a multiplayer map can still invoke hidden teleports but one player may seem to dissapear for the other. 
- Any blocks beyond an illusion zone will not render. This effectively limits the source and destination rooms to the boundaries of the illusion zone. For one-way teleports, a vista-to-room transition can be supported. Clever use of duplicating blocks on the source side can also allow for a room-to-vista transition.
- Random texture rotation can give away teleports if players are looking for it. There are resource packs which disable this effect.
- Random vegetation offsets will absolutely give away teleports when the player is nearby. Make sure to have no flowers, grass, lilly pads, etc within several blocks of either trigger.
- Occasionally, blocks will recieve block updates from rendering the IZ and will destroy themselves. If you can, try to limit the use of wall torches, wall signs, etc. Blocks supported from above or below should be ok. I reccommend disabling tile drops to stop these blocks from dropping items.
- Try not to place redstone within an IZ. Copying blocks to the scratch area and back will cause unpredictable results.
- Try not to place containers within an IZ. Items may be duplicated on portal open and close.

## License
This pack is licensed under the GPLv3. Please see the LICENSE file for the full license text. More info on the GPLv3 [here](https://choosealicense.com/licenses/gpl-3.0/).

Quick explanation: you are free to distribute and/or modify this project provided derivative works are also open-source and licensed by the GPLv3. If you would like or require a more permissive license for your project, feel free to reach out.

## Closing thoughts
Thank you for your interest in my datapack! I'm looking forward to seeing what you make.