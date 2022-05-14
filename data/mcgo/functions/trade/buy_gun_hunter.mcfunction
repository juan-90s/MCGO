tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute if score @s cash matches 1700.. run tellraw @s [{"text":"You have bought the Hunter"}]
execute if score @s cash matches 1700.. run function mcgo:ui/playsound/trade
execute unless score @s cash matches 1700.. run tellraw @s [{"text":"You dont have enough cashs to buy the Hunter"}]

execute if score @s cash matches 1700.. run function mcgo:utl/give_hunter
execute if score @s cash matches 1700.. run scoreboard players remove @s cash 1700

function mcgo:ui/show_cash_raw