execute as @e[name=op_marker,scores={inRound=0,cd=0},limit=1,sort=nearest] if predicate mcgo:enough_p_num run function mcgo:zelf/start_round
execute as @e[name=op_marker,scores={inRound=0,cd=0},limit=1,sort=nearest] unless predicate mcgo:enough_p_num run tellraw @a[tag=mcgo_player] ["Not enough players"]