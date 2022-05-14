# remove all drops
kill @e[type=minecraft:item,distance=..30]
stopsound @a[tag=mcgo_player] music

# reset round kills
scoreboard players set @a[tag=mcgo_player] rKgold 0
scoreboard players set @a[tag=mcgo_player] rKblue 0
scoreboard players set @a[tag=mcgo_player] rK 0

# setup round stat
scoreboard players add @e[name=op_marker,limit=1,sort=nearest] round 1

#--SHOW TITLE--
title @a[tag=mcgo_player] title ["Round ",{"score":{"name":"@e[name=op_marker,limit=1,sort=nearest]","objective":"round"}}]

# check matchpoint whether any team is going to reach matchpoint
scoreboard players remove @e[name=op_marker,limit=1,sort=nearest] matchpoint 1
execute as @e[name=op_marker,limit=1,sort=nearest] if score @s winRgold = @s matchpoint run title @a[tag=mcgo_player] title "MatchPoint"
execute as @e[name=op_marker,limit=1,sort=nearest] if score @s winRblue = @s matchpoint run title @a[tag=mcgo_player] title "MatchPoint"
title @a[tag=mcgo_player] subtitle [{"score":{"name":"@e[name=op_marker,limit=1,sort=nearest]","objective":"winRgold"},"color":"gold"},{"text":" - ","color":"white"},{"score":{"name":"@e[name=op_marker,limit=1,sort=nearest]","objective":"winRblue"},"color":"blue"}]
# title @a[tag=mcgo_player] subtitle [{"score":{"name":"@e[name=op_marker,limit=1,sort=nearest]","objective":"pNgold"},"color":"gold"},{"text":" vs ","color":"white"},{"score":{"name":"@e[name=op_marker,limit=1,sort=nearest]","objective":"pNblue"},"color":"blue"}]

scoreboard players add @e[name=op_marker,limit=1,sort=nearest] matchpoint 1

execute as @a[tag=mcgo_player] run function mcgo:utl/flush_inventory
execute as @a[tag=mcgo_player] run function mcgo:map/tp_site

scoreboard players set @e[name=op_marker,limit=1,sort=nearest] inRound 1