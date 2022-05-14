scoreboard players set @e[name=op_marker,limit=1,sort=nearest] inRound 0
scoreboard players add @e[name=op_marker,limit=1,sort=nearest] winRblue 1

# round reward
scoreboard players add @a[team=gold] cash 1400
scoreboard players add @a[team=blue] cash 3000
# Kill reward
scoreboard players operation @a[tag=mcgo_player] rK *= @e[name=op_marker,limit=1,sort=nearest] awardK 
execute as @a[tag=mcgo_player] run scoreboard players operation @s cash += @s rK
scoreboard players set @a[tag=mcgo_player] rK 0

# update MVP
execute as @a[tag=mcgo_player] if score @s kNum > @e[name=op_marker,limit=1,sort=nearest] kLead run scoreboard players operation @e[name=op_marker,limit=1,sort=nearest] kLead = @s kNum

# Not MatchPoint
execute as @e[name=op_marker,limit=1,sort=nearest] unless score @s winRblue = @s matchpoint run title @a[tag=mcgo_player] title {"text":"CT Win"}
execute as @e[name=op_marker,limit=1,sort=nearest] unless score @s winRblue = @s matchpoint run title @a[tag=mcgo_player] subtitle [{"score":{"name":"@e[name=op_marker,limit=1,sort=nearest]","objective":"winRgold"},"color":"gold"},{"text":" - ","color":"white"},{"score":{"name":"@e[name=op_marker,limit=1,sort=nearest]","objective":"winRblue"},"color":"blue"}]
playsound mcgo:music.win music @a[tag=mcgo_player,team=blue] ~ ~ ~ 0.7
playsound mcgo:music.lose music @a[tag=mcgo_player,team=gold] ~ ~ ~ 0.7
playsound mcgo:voice.win_ct voice @a[tag=mcgo_player] ~ ~ ~ 0.5

execute as @a[tag=mcgo_player] run function mcgo:ui/show_cash
execute as @a[tag=mcgo_player] run function mcgo:ui/show_tips
effect give @a[tag=mcgo_player] regeneration 10 1 true

schedule function mcgo:map/tp_all_room 5s

# MatchPoint
execute as @e[name=op_marker,limit=1,sort=nearest] if score @s winRblue = @s matchpoint run title @a[tag=mcgo_player] title {"text":"CTs Victory","bold":true,"color":"blue"}
execute as @e[name=op_marker,limit=1,sort=nearest] if score @s winRblue = @s matchpoint run function mcgo:win_final

