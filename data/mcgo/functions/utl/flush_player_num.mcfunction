# refresh the number of player in each team
execute store result score @e[name=op_marker,limit=1,sort=nearest] pNgold run team list gold
execute store result score @e[name=op_marker,limit=1,sort=nearest] pNblue run team list blue