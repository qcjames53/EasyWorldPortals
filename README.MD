# Easy World Portals
###### Version 1.1

## Introduction
Easy World Portals is a Minecraft 1.20 datapack which smoothly mimics Valve-style world portals in Minecraft custom maps. Think the [Immersive Portals mod](https://www.curseforge.com/minecraft/mc-mods/immersive-portals-mod) but in very limited circumstances.

![Easy Immersive Portals tech demo loop](https://media.giphy.com/media/dxCX2rSzDldCnzxSr5/giphy.gif)

## Installing the datapack
Back up your world. This datapack can seriously destroy worlds if/when things hit the fan.

Copy the `portal` folder into your `datapacks` directory. After enabling, use your main datapack to call `function portal:tick` once every tick. Alternatively, uncomment `function __tick__() { tick(); }` in portal.jmc and recompile to run the pack standalone.

## Trigger basics

## Flags
Give yourself the portal_log flag to recieve portal logging messages.

## Mcfunction script headers
Scripts all have a 3+ line header in the following format:
- Description: A small description of what the script does.
- Inputs: A `/say` command which details the macros the function requires as inputs. These lines can be uncommented for debugging purposes.
- Entity descriptor: A description of the entity which should be running this script.

## License
This pack is licensed under the GPLv3. Please see the LICENSE file for the full license text. More info on the GPLv3 [here](https://choosealicense.com/licenses/gpl-3.0/).

Quick explanation: you are free to distribute and/or modify this project provided derivative works are also open-source and licensed by the GPLv3. If you would like (or need) a more permissive license for your project, feel free to reach out.

## Closing thoughts
Thank you for your interest in my datapack! I'd love to see what you make.