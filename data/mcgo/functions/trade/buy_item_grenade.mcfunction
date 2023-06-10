tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute as @s[nbt={Inventory:[{Slot:4b,id:"cgm:grenade"}]}] run tellraw @s [{"text":"You can only bought 1"}]
execute as @s[nbt=!{Inventory:[{Slot:4b,id:"cgm:grenade"}]}] if score @s cash matches 300.. run tellraw @s [{"text":"You have bought the grenade"}]
execute as @s[nbt=!{Inventory:[{Slot:4b,id:"cgm:grenade"}]}] if score @s cash matches 300.. run function mcgo:ui/playsound/trade
execute as @s[nbt=!{Inventory:[{Slot:4b,id:"cgm:grenade"}]}] unless score @s cash matches 300.. run tellraw @s [{"text":"You dont have enough cashs to buy the AR"}]
execute as @s[nbt=!{Inventory:[{Slot:4b,id:"cgm:grenade"}]}] if score @s cash matches 300.. run scoreboard players remove @s cash 300
execute as @s[nbt=!{Inventory:[{Slot:4b,id:"cgm:grenade"}]}] if score @s cash matches 300.. run item replace entity @s hotbar.4 with cgm:grenade 1
function mcgo:ui/show_cash_raw