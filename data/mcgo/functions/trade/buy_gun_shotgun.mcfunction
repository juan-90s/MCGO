tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute if score @s cash matches 1000.. run tellraw @s [{"text":"You have bought the shotgun"}]
execute if score @s cash matches 1000.. run function mcgo:ui/playsound/trade
execute unless score @s cash matches 1000.. run tellraw @s [{"text":"You dont have enough cashs to buy the shotgun"}]

execute if score @s cash matches 1000.. run function mcgo:utl/give_shotgun
execute if score @s cash matches 1000.. run scoreboard players remove @s cash 1000

function mcgo:ui/show_cash_raw