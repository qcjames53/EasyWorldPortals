# Easy World Portals
###### Version 1.1

## Introduction
Easy World Portals is a Minecraft 1.20 datapack which smoothly mimics Valve-style world portals in Minecraft custom maps. Think the [Immersive Portals mod](https://www.curseforge.com/minecraft/mc-mods/immersive-portals-mod) but in very limited circumstances.

![Easy Immersive Portals tech demo loop](https://media.giphy.com/media/dxCX2rSzDldCnzxSr5/giphy.gif)

## Installing the datapack
Back up your world. This datapack can seriously destroy worlds if/when things hit the fan.

Copy the `portal` folder into your `datapacks` directory. After enabling, use your main datapack to call `function portal:tick` once every tick. Alternatively, uncomment `function __tick__() { tick(); }` in portal.jmc and recompile to run the pack standalone.

## Portal creation basics
1. Make sure nothing is located in the volume -15,0,-15 to 15,15,15. This area will be overridden by the datapack. I recommend surrounding the area in a hollow cube.
2. Stand where you'd like to place a portal. Run `function portal:helpers/summon`. The helpers directory is full of commands to make placing and modifying portals easier.
3. We need an exit portal as well. Stand at the exit location and run `function portal:helpers/summon`.
4. Connect the portals together. Run `function portal:helpers/show_all` to show the portal ids for the portals summoned. Note the first number displayed for the entry and exit portals; this is the portal_id.
5. Standing next to the entry portal, set the `portal_target`, `portal_direction`, and `portal_width`:

    ```
    scoreboard players set @e[tag=portal,sort=nearest,limit=1] portal_target <target_id>
    scoreboard players set @e[tag=portal,sort=nearest,limit=1] portal_direction 0
    scoreboard players set @e[tag=portal,sort=nearest,limit=1] portal_width 3
    ```
    We use 0 for direction to mean a north-facing portal. Currently, portal widths 1-3 are supported.

6. Set the properties for the exit portal so the connection is maintained in both directions:

    ```
    scoreboard players set @e[tag=portal,sort=nearest,limit=1] portal_target <target_id>
    scoreboard players set @e[tag=portal,sort=nearest,limit=1] portal_direction 2
    scoreboard players set @e[tag=portal,sort=nearest,limit=1] portal_width 3
    ```

    We use a direction of 2 to mean a south-facing portal. Portals must be created in north-south or east-west pairs.

7. Call `function portal:helpers/show_all` to ensure the connections are set up properly. The second number is the configured target id.
8. Activate a portal by calling `function portal:open` from the portal you wish to activate. A helper function will allow you to activate the nearest portal, as well: `function portal:helpers/open_nearest`. Never open more than one portal at a time.
9. When it's time to close a portal, call `function portal:close` from the portal you wish to deactivate. The helper function `function portal:helpers/close_all` will close all portals if things go very wrong.
10. To chain portals together, use the `portal_open_on_travel` scoreboard. When a player enters a portal and causes it to close, the portal with an id matching the entry portal's `portal_open_on_travel` value will be automatically opened.

## Limitations
These portals have many limitations. It is my hope that this project will be tastefully used in areas where the limitations are hidden and the illusion can be properly sold. Major issues are listed below:

- Supports only one player viewing the portal at a time due to the way the illusion operates.
- Supports only one open portal at a time due to the need to hardcode a block scratch space in world geometry.
- Requires two free 31x31x5 volumes in the world for scratch due to limitations in the clone command. This defaults to being centered on 0,0,0 and 0,10,0.
- Entities will not show through portals.
- Players cannot edit blocks through a portal.
- Chests or other containers will endlessly duplicate items if opened through a portal.
- Fluids aren't guaranteed to work particularly well. Even static water occasionally has issues.
- Portals only clone a 31x15x5 area around the opening. Teleports are very obvious if there is no backing wall obscuring the location change (This can be changed by using the portal_properties_setup tool, see below).
- Portals must connect as north-south or east-west pairs.
- If a player goes "behind" an active portal, the illusion breaks. You will have to manually close the portal if the player passes the portal plane without being inside the portal volume.
- While I personally haven't been able to observe game slowdown, I have no doubts this is a heavy datapack. An open portal runs a bunch of clone commands per tick. I've tried to optimize the hell out of this pack, but we're still asking a lot of Minecraft to sell the illusion.

## What's with all these .JMC files?
Javascript-like Minecraft Function is a development tool which compiles JMC scripts into Minecraft-compatible datapacks. I'm a big fan of how it leaves .mcfunction alone while adding quality-of-life improvements around the existing framework. This project would not have been feasible without WingedSeal's work on this tool. More info on [jmc.wingedseal.com](https://jmc.wingedseal.com/).

## Recompiling Changes
I am shipping this datapack with what I believe to be sane defaults. If you'd like to tweak any settings, recompiling through JMC will likely be necessary.

If you'd like to use the bundled JMC 1.2.14 binary, run `./JMC.bin compile` from the datapack root. This probably requires a Linux-like system or WSL. Alternatively, you can install a new version of JMC following instructions on [WingedSeal's website](https://jmc.wingedseal.com/).

To change the shape of the illusion field behind the portal, use the portal_properties_setup tool by modifying the globals at the start of the script. A basic render of the suggested changes will show as a sanity check. If you're happy with the changes, press 's' to save; a recompile will be needed after this operation. Make sure you're using a large enough terminal window (40+ rows recommended to avoid curses errors). If you attempt to extend the width or height past 15, further changes on the JMC source will be needed to deal with opening and closing the portals.

## License
This pack is licensed under the GPLv3. Please see the LICENSE file for the full license text.

Quick explanation: you are free to distribute and/or modify this project provided derivative works are also open-source and licensed by the GPL. If you would like (or need) a more permissive license for your project, feel free to reach out.

More info on the GPLv3 [here](https://choosealicense.com/licenses/gpl-3.0/).

JMC is bundled under the terms of the MIT license. Please see the JMC_LICENSE file for the full license text.

## Closing thoughts
Thank you for your interest in my datapack! I'd love to see what you make.