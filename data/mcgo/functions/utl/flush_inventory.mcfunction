# flush health
effect give @s instant_health 1 250 true

# clear hotbar
item replace entity @s hotbar.2 with air
item replace entity @s[nbt=!{Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] hotbar.3 with air
item replace entity @s[nbt=!{Inventory:[{Slot:4b,id:"cgm:grenade"}]}] hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air
item replace entity @s weapon.offhand with air

# clear other inventory
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air

# flush weapon
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:assault_rifle"}]}] run function mcgo:utl/give_ar
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:rifle"}]}] run function mcgo:utl/give_hunter
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:shotgun"}]}] run function mcgo:utl/give_shotgun
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:heavy_rifle"}]}] run function mcgo:utl/give_sniper
execute as @s run function mcgo:utl/give_pistol

item replace entity @s[nbt={Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] hotbar.3 with cgm:stun_grenade 1
item replace entity @s[nbt={Inventory:[{Slot:4b,id:"cgm:grenade"}]}] hotbar.4 with cgm:grenade 1