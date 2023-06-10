clear @s
gamemode adventure @s
scoreboard players set @s cash 0
scoreboard players set @s kNum 0
scoreboard players set @s dNum 0
scoreboard players set @s rK 0
scoreboard players set @s rKgold 0
scoreboard players set @s rKblue 0
tag @s add mcgo_player
function mcgo:map/tp_lobby
tellraw @a[tag=mcgo_player] [{"selector":"@s"}," join"]
tellraw @s ["",{"text":"Welcome to MC:GO, ","color":"white"},{"text":"\n"},{"text":"This is a cs:go-like FPS game. The victory condition is to kill all opposing players.","color":"gray"},{"text":"\n"},{"text":"Now you should select your side.","color":"white"},{"text":"\n"},{"text":"After that, you will be teleport to Tactic Room and wait for a new round.","color":"gray"},{"text":"\n"},{"text":"You can buy weapon and armor at that time.","color":"white"},{"text":"\n"},{"text":"If players in two side is enough, a countdown will start.","color":"gray"},{"text":"\n"},{"text":"Have fun :)","color":"white"},{"text":"\n "}]