team leave @s
team join gold @s
scoreboard players add @s[tag=mcgo_player] cash 800
scoreboard players add @e[name=op_marker,limit=1,sort=nearest] pNgold 1
function mcgo:utl/give_pistol
function mcgo:ui/show_cash
function mcgo:ui/show_tips
function mcgo:map/tp_room
execute as @s at @s run spawnpoint @s ~ ~ ~
