tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute as @s[nbt={Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] run tellraw @s [{"text":"You can only bought 1"}]
execute as @s[nbt=!{Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] if score @s cash matches 200.. run tellraw @s [{"text":"You have bought the flashbang"}]
execute as @s[nbt=!{Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] if score @s cash matches 200.. run function mcgo:ui/playsound/trade
execute as @s[nbt=!{Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] unless score @s cash matches 200.. run tellraw @s [{"text":"You dont have enough cashs to buy the flashbang"}]
execute as @s[nbt=!{Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] if score @s cash matches 200.. run scoreboard players remove @s cash 200
execute as @s[nbt=!{Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] if score @s cash matches 200.. run replaceitem entity @s hotbar.3 cgm:stun_grenade 1
function mcgo:ui/show_cash_raw