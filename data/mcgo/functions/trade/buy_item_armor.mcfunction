tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute if score @s cash matches 650.. run tellraw @s [{"text":"You have bought the armor"}]
execute if score @s cash matches 650.. run function mcgo:ui/playsound/trade
execute unless score @s cash matches 650.. run tellraw @s [{"text":"You dont have enough cashs to buy the armor"}]
execute if score @s cash matches 650.. run function mcgo:utl/give_armor
execute if score @s cash matches 650.. run scoreboard players remove @s cash 650
function mcgo:ui/show_cash_raw