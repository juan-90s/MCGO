clear @s
team leave @s
scoreboard players reset @s cash
scoreboard players reset @s kNum
scoreboard players reset @s dNum
scoreboard players reset @s rK
scoreboard players reset @s rKgold
scoreboard players reset @s rKblue
tellraw @a[tag=mcgo_player] [{"selector":"@s"}," quit"]
tag @s remove mcgo_player

