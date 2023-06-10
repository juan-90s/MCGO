data modify storage mcgo:game isStart set value true
team add gold "Terrorists"
team modify gold color gold
team modify gold friendlyFire false
team modify gold nametagVisibility hideForOtherTeams
team add blue "Counter-Terrorists"
team modify blue color blue
team modify blue friendlyFire false
team modify blue nametagVisibility hideForOtherTeams

# --player score--
scoreboard objectives add cash dummy "Cash"
scoreboard objectives add kNum playerKillCount "Kill"
scoreboard objectives add dNum deathCount "Death"
scoreboard objectives add rK playerKillCount "Kill in Round"
scoreboard objectives add rKgold teamkill.gold
scoreboard objectives add rKblue teamkill.blue
# rK is used to award kills
# rKteam is used to judge win condition
# teamkill increment when a player kills a member of the given colored team.


# --OP score--
# fixed FACTOR
scoreboard objectives add maxcd dummy "Max CountDown"
scoreboard objectives add matchpoint dummy "Match Point"
scoreboard objectives add awardK dummy "Kill 1 award"

# game cycle
scoreboard objectives add round dummy
scoreboard objectives add inRound dummy
scoreboard objectives add cd dummy "CountDown"
scoreboard objectives add kLead dummy "MVP Kills"

# Team score
scoreboard objectives add winRgold dummy
scoreboard objectives add pNgold dummy "T Players"
scoreboard objectives add rKsumgold dummy


scoreboard objectives add winRblue dummy
scoreboard objectives add pNblue dummy "CT Players"
scoreboard objectives add rKsumblue dummy

scoreboard objectives setdisplay list kNum

summon minecraft:armor_stand ~ ~1 ~ {Invisible:1,Marker:1,CustomName:'{"text":"op_marker"}'}
# init score for OP
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] matchpoint 8
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] maxcd 21
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] awardK 300

scoreboard players set @e[name="op_marker",limit=1,sort=nearest] round 0
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] inRound 0
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] cd -1
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] kLead 0

scoreboard players set @e[name="op_marker",limit=1,sort=nearest] winRgold 0
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] pNgold 0
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] rKsumgold 0
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] winRblue 0
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] pNblue 0
scoreboard players set @e[name="op_marker",limit=1,sort=nearest] rKsumblue 0

# check tp point 
execute unless entity @e[name=lobby] run say Please Run mcgo:map/place_lobby at your lobby
execute unless entity @e[name=room_gold] run say Please Run mcgo:map/place_room_gold at your Ts Room
execute unless entity @e[name=room_blue] run say Please Run mcgo:map/place_room_blue at your CTs Room
execute unless entity @e[name=site_gold] run say Please Run mcgo:map/place_site_gold at your Ts Site
execute unless entity @e[name=site_blue] run say Please Run mcgo:map/place_site_blue at your CTs Site

say A game of MC:GO is started
