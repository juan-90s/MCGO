# MC:GO


## Description

This is a Minecraft Datapack depending on MrClayfish's Gun Mod, which can help you create a shoot gameplay. The game mechanics mimicked CS:GO. You can buy guns and items before rounds start, and defeat the all enemies to win rounds.

## Requirement
[Clayfish's Gun Mod](https://github.com/MrCrayfish/MrCrayfishGunMod)

[![Download](https://img.shields.io/static/v1?label=&message=Download&color=2d2d2d&labelColor=dddddd&style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAALEQAACxEBf2RfkQAAAAd0SU1FB98BHA41LJJkRpIAAAAYdEVYdFNvZnR3YXJlAHBhaW50Lm5ldCA0LjAuMvvhp8YAAAGGSURBVDhPjZK9SgNBFIVHBEUE8QeMhLAzdzdYBFL7CmnstEjjO4iFjWClFiGJm42VFpYSUptKRfABFBQE7UUI2AmGmPXM5k6cjFE8cJjZ3fPduTOzIiJarvl+bPmuLuWS+K/KmcwUoK4pEGoTnetvYTY7GUpZOCTa0sZi+QRyhQ83pkBShKjDUBvzGKNxr6rU8W4uN8FoX4CKEcB6EMR61OZOEtApEqNIndFvAbiNuAB30QeU+sDYBXSCdw3MrzHvlnx/kdFkC3kU6NkwF3iM0ukFnNM8R0UplZquKHWE85nhV0Kg4o4GrDMwre5x5G9h9aaBHL/VPI849rtqRFfwqALaIcd+F87gYnDy1ha0sY12VcoiR0cLq5/ae3e3gyLbHB2tMAgKQ1fXh+z5a1mpDXQyy8hPIdgyAEMDW8+fWOQJHbfgzXUhxhkXYh/3jcC9C7s2V43c+9DPpHXgeXMIXbqQbV7gAV5hbFixEGMVolUEmvjjXuBeRcoOnp/R/hm81hi0LsQX8OcRBvBjZ8YAAAAASUVORK5CYII=)](https://mrcrayfish.com/mods?id=cgm) 

[WorldEdit](https://www.curseforge.com/minecraft/mc-mods/worldedit) (optional)
## Installing 
### Datapack
Put the MCGO datapack.zip file inside `.minecraft/saves/{WORLD}/datapacks`
### Example Map Schematics
Put the mcgo_test_map.schem file inside `.minecraft/config/worldedit/schematics`

## Recommended Setting
### Game Rules
run function
```
/function mcgo:pre_config
```
### Player UI Setting

Chat Setting → Text Background Opacity → 0%

Minimap Setting(defaut Y) → Entity Radar Settings → Display Radar → off

## Map
The game consists of 5 closed spaces.

- Battleground：A large map where players fight against others
- Tactic Room：Two closed rooms where players can buy items and respawn once they died on the battleground
- Lobby：The initial place where players will go after entering the game and finishing a game
- Command Centor：The place where a redstone clock repeately execute game commands.

![mcgo_map.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ccda9038-ac0f-4225-b102-4688ffab1c60/mcgo_map.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220520%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220520T225654Z&X-Amz-Expires=86400&X-Amz-Signature=47e87d2fe1e5b0ed6fcf20f0816d1b5694be26ff381cb1bd101b8d644a3e3e0a&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22mcgo_map.png%22&x-id=GetObject)

## User Interface

Players can right-click on the custom sign to interact with the game's dark oak sign has set up click events to perform functions

The advantage of this method compared with CommandBlock is that it can better select the execution object. The @s of the custom sign Click event is the player who right-clicked on the sign, while the @s of CommandBlock is itself, and it needs to point to the nearest player with @p, which inevitably points to the wrong object.

## How to Create Your Own Map
### Battleground 
- build the battleground itself
- Set each start point of two side by standing on that point and run
```
/function mcgo:map/place_site_blue

/function mcgo:map/place_site_gold
```
### Tactic Room
- build your tactic on your own style 
- Set each room point of two side by standing on that point and run
```
/function mcgo:map/place_room_blue

/function mcgo:map/place_room_gold
```
- run this function to get UI signs and place them
```
/function mcgo:utl/give_all_signs
```
- If you hang the gun on the item frame, run this function to fix that so that they are invisible and invulnerable except for destruction on creation mode
```
/function mcgo:utl/fix_itemframe
```
### Lobby
- build your lobby on your own style 
- Set lobby point by standing on that point and run
```
/function mcgo:map/place_lobby
```
### Command Center
- build a hiden place where players can not get in
- clear a ground with size of 5x6 at the south of you
- run command below, it will build a redstone clock connected with three commandblocks
```
/function mcgo:map/build_gameloop
```


## Known Issue

- sound effect in the server gameplay is not stable, sometimes players wound not hear that
- unbalanced economic system

## 1.16 → 1.17+

Coming soon or you can make your own

## Reference

[CS:GO Economy Guide: How it Works, Bonuses, the Meta, and More](https://dotesports.com/counter-strike/news/beginners-guide-csgo-economy-basics-edition-23593)