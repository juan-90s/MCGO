tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute if score @s cash matches 2000.. run tellraw @s [{"text":"You have bought the AR"}]
execute if score @s cash matches 2000.. run function mcgo:ui/playsound/trade
execute unless score @s cash matches 2000.. run tellraw @s [{"text":"You dont have enough cashs to buy the AR"}]

execute if score @s cash matches 2000.. run function mcgo:utl/give_ar
execute if score @s cash matches 2000.. run scoreboard players remove @s cash 2000
function mcgo:ui/show_cash_raw
