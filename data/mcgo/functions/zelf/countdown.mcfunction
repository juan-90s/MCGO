execute as @e[name=op_marker,limit=1,sort=nearest] if score @s cd matches ..0 run scoreboard players operation @s cd = @s maxcd
execute as @e[name=op_marker,limit=1,sort=nearest] if score @s cd matches 1.. run scoreboard players remove @s cd 1
execute as @e[name=op_marker,limit=1,sort=nearest] if score @s cd matches ..15 run title @a[tag=mcgo_player] title [" "]
execute as @e[name=op_marker,limit=1,sort=nearest] if score @s cd matches ..15 run title @a[tag=mcgo_player] subtitle [{"score":{"name":"@s","objective":"cd"}}]
