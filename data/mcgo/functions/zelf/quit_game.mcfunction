execute as @a[tag=mcgo_player] run function mcgo:quit_player
function mcgo:map/tp_all_lobby

scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] winRgold
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] winRblue
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] pNgold
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] pNblue
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] rKsumgold
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] rKsumblue

scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] round
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] inRound 
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] cd
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] kLead

scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] maxcd
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] awardK
scoreboard players reset @e[name="op_marker",limit=1,sort=nearest] matchpoint
kill @e[name="op_marker",limit=1,sort=nearest]

# remove Players's Score
scoreboard objectives remove cash
scoreboard objectives remove kNum
scoreboard objectives remove dNum
scoreboard objectives remove rK

scoreboard objectives remove rKgold 
scoreboard objectives remove rKblue 

# remove OP's Score
scoreboard objectives remove maxcd
scoreboard objectives remove awardK
scoreboard objectives remove matchpoint

scoreboard objectives remove round 
scoreboard objectives remove inRound 
scoreboard objectives remove cd
scoreboard objectives remove kLead


scoreboard objectives remove winRgold 
scoreboard objectives remove pNgold 
scoreboard objectives remove rKsumgold
scoreboard objectives remove winRblue 
scoreboard objectives remove pNblue 
scoreboard objectives remove rKsumblue

team remove gold
team remove blue
data remove storage mcgo:game isStart
say The game of MC:GO is closed