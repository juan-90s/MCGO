#--PREPARE FACTOR--
function mcgo:utl/flush_player_num

scoreboard players operation @e[name=op_marker,limit=1,sort=nearest] rKsumgold += @a[tag=mcgo_player] rKgold
scoreboard players operation @e[name=op_marker,limit=1,sort=nearest] rKsumblue += @a[tag=mcgo_player] rKblue

#--JUDGE FACTOR--
# if number of members killed equals to total number of member of a team, the other team win
execute as @e[name=op_marker,scores={inRound=1},limit=1,sort=nearest] if score @s rKsumblue >= @s pNblue run function mcgo:win_gold
execute as @e[name=op_marker,scores={inRound=1},limit=1,sort=nearest] if score @s rKsumgold >= @s pNgold run function mcgo:win_blue

scoreboard players set @e[name=op_marker,limit=1,sort=nearest] rKsumgold 0
scoreboard players set @e[name=op_marker,limit=1,sort=nearest] rKsumblue 0
