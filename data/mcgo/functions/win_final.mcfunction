execute as @a[tag=mcgo_player] if score @s kNum = @e[name=op_marker,limit=1,sort=nearest] kLead run title @a[tag=mcgo_player] subtitle [{"text":"MVP: ","color":"white"},{"selector":"@s"}]
execute as @a[tag=mcgo_player] if score @s kNum = @e[name=op_marker,limit=1,sort=nearest] kLead run stopsound @s music
execute as @a[tag=mcgo_player] if score @s kNum = @e[name=op_marker,limit=1,sort=nearest] kLead run playsound mcgo:music.mvp music @s ~ ~ ~ 0.7
tellraw @a[tag=mcgo_player] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
# reset OP stat 
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] round 0
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] inRound 0
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] cd -1
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] kLead 0

scoreboard players set @e[name=op_marker,limit=1,sort=nearest] winRgold 0
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] pNgold 0
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] rKsumgold 0

scoreboard players set @e[name=op_marker,limit=1,sort=nearest] winRblue 0
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] pNblue 0
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] rKsumblue 0

# reset player stat
team leave @a[tag=mcgo_player]
execute as @a[tag=mcgo_player,team=gold] run scoreboard players remove @e[name=op_marker,limit=1,sort=nearest] pNgold 1
execute as @a[tag=mcgo_player,team=blue] run scoreboard players remove @e[name=op_marker,limit=1,sort=nearest] pNblue 1
clear @a[tag=mcgo_player]
scoreboard players set @a[tag=mcgo_player] cash 0
scoreboard players set @a[tag=mcgo_player] kNum 0
scoreboard players set @a[tag=mcgo_player] dNum 0
scoreboard players set @a[tag=mcgo_player] rK 0
scoreboard players set @a[tag=mcgo_player] rKgold 0
scoreboard players set @a[tag=mcgo_player] rKblue 0
schedule function mcgo:map/tp_all_lobby 3s
execute as @a[tag=mcgo_player] at @a[tag=mcgo_player] run spawnpoint @a[tag=mcgo_player] ~ ~ ~