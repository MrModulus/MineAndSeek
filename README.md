
# Welcome to MineAndSeek!

MineAndSeek is a minigame datapack designed by EternalLawn and implemented by LordKanelsnegle. It's only really intended for personal use at the moment, but for our own sakes, a breakdown of the project structure can be found below.

# Game Design

The overall premise of the game is simple - hide and seek, with the flair of specialized classes. The seekers are referred to as "Hunters", and the hiders are referred to as "Survivors". Every class has a passive ability/perk, an active ability, and an ultimate ability. Lawn, please check this part and modify it as you deem fit :-)

## Hunters

<details>
  <summary>Mr Example, The Rogue Warrior</summary>
  
  > A small lore-y character description
  
  > **Passive - Yo Mama**
  <br>EEEEEEEE
  
  > **Active - My Mama**
  <br>ooooooo
  
  > **Ultimate - Our Mama**
  <br>aaaaaaaaaaaaa
 
</details>

<details>
  <summary>Mrs Example, The Vile Purge</summary>
  
  > A small lore-y character description
  
  > **Passive - Yo Mama**
  <br>EEEEEEEE
  
  > **Active - My Mama**
  <br>ooooooo
  
  > **Ultimate - Our Mama**
  <br>aaaaaaaaaaaaa
 
</details>

## Survivors

<details>
  <summary>Mr Example, The Unseen</summary>
  
  > A small lore-y character description
  
  > **Passive - Yo Mama**
  <br>EEEEEEEE
  
  > **Active - My Mama**
  <br>ooooooo
  
  > **Ultimate - Our Mama**
  <br>aaaaaaaaaaaaa
 
</details>

<details>
  <summary>Mrs Example, The Trickster</summary>
  
  > A small lore-y character description
  
  > **Passive - Yo Mama**
  <br>EEEEEEEE
  
  > **Active - My Mama**
  <br>ooooooo
  
  > **Ultimate - Our Mama**
  <br>aaaaaaaaaaaaa
 
</details>

# Folders

All of the folders of interest are in `data/mas`, so assume all folders discussed are in that directory unless otherwise specified.

## Functions

This folder contains chunks of code known as "functions", which can be run individually. Some of these are called every tick while others are called at specific times.

### Classes
Contains functions for each of the classes, separated into `hunter` and `survivor` folders. These include their respective abilities and kits.

### Game
Contains functions pertaining to joining/leaving the game and moderator commands in case something goes wrong.

### Logic
Contains the functions that control the flow of the game, such as the code for initializing rounds or cleaning up after they're done.

### Scripts
Contains the functions needed for installing/uninstalling the datapack, these shouldn't need to change too often. Any variables or scoreboards and such that are needed for the game to work properly should be initialized in the `install` function and removed in the `uninstall` function.

## Structures

This folder contains the structures needed to load the different maps at the beginning of every round. For now, it's not actually used, but in the future it might be useful to have the datapack itself control the structures for portability or to allow other users to contribute their own maps.

## Tags

This folder contains the tags used to group different things together, such as functions or blocks. At the moment we only use the tags to group together the functions needed for setting up the datapack, though in the future they could be used for other things. For instance, rather than checking for 5 different block types individually, you could group them and check for a specific tag.


# To-Do

The to-do's of this project are ever-changing, but this is a tentative list of what work there is to be done.

## Bugs

Any bug fixes that are within our control can be found here. These are generally high priority.
- Example

## Balancing

Any balancing changes that need to be made can be found here. These are generally medium priority.
- Example

## New Concepts

Any new ideas or WIP classes/abilities/etc can be found here. These are generally low priority.
- Example

## Caveats
Any bugs or issues that are version-dependent or faults with Minecraft itself can be found here. They won't be actively worked on, but are worth noting for future reference in case they eventually get fixed.
- Example

# Coding Conventions

There are some very important coding conventions that need to be adhered to, such as the naming of certain variables or tags. These will be updated as time goes on and are currently as follows:
- All tag, scoreboard, and variable names should be prefixed with `mas.` to reduce chance of conflict with other datapacks
- Dummy variables in scoreboards should be prefixed with # to avoid accidentally setting values for players with the same name - even if players won't be added to that list
- Use `_` to join multiple words in a variable name, e.g. `#round_timer` NOT `#round.timer`
- Constant values should be set up as enums rather than being hardcoded, using the correct section of `mas.enums`, and must be CAPS_CASE to indicate that they are constants
- Every file should have a comment describing it at the top, and comments dividing the functionality into sections. Otherwise, comments are only needed when the code is not self-explanatory
- Always use `type` and `limit` (where applicable) for entity searches, even if it's a situation where doing so feels redundant
- Respect `global.ignore` flags when selecting entities without MaS-specific tags - more info [here](https://mc-datapacks.github.io/en/conventions/global_ignoring_tag.html)

# Final Notes

The following bits of information are not super useful at the moment, but may prove to be interesting or useful in the future.
- [Right-Click Detection](https://www.youtube.com/watch?v=xcOw4conrVM)
- [Raycasting](https://www.youtube.com/watch?v=RTRYfrli8GU)
- [Structures via Datapack](https://www.youtube.com/watch?v=kzme5WV0plM)
- [Command Generator](https://mcstacker.net/)
- [Other Tools](https://misode.github.io/)
- [Statistics](https://minecraft.fandom.com/wiki/Statistics#List_of_custom_statistic_names)
- [`summon snowball ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:diamond_block",Count:1b}}`](https://gyazo.com/4f60726046654ec8e1d7780622466bdb)