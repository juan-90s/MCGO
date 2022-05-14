tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute if score @s cash matches 4800.. run tellraw @s [{"text":"You have bought the Sniper"}]
execute if score @s cash matches 4800.. run function mcgo:ui/playsound/trade
execute unless score @s cash matches 4800.. run tellraw @s [{"text":"You dont have enough cashs to buy the Sniper"}]

execute if score @s cash matches 4800.. run function mcgo:utl/give_sniper
execute if score @s cash matches 4800.. run scoreboard players remove @s cash 4800

function mcgo:ui/show_cash_raw
