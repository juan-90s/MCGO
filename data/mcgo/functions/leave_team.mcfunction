execute as @s[team=gold] run scoreboard players remove @e[name="op_marker",limit=1,sort=nearest] pNgold 1
execute as @s[team=blue] run scoreboard players remove @e[name="op_marker",limit=1,sort=nearest] pNblue 1
team leave @s
clear @s
scoreboard players set @s cash 0
scoreboard players set @s kNum 0
scoreboard players set @s dNum 0
scoreboard players set @s rK 0
scoreboard players set @s rKgold 0
scoreboard players set @s rKblue 0
function mcgo:map/tp_lobby
execute as @s at @s run spawnpoint @s ~ ~ ~
