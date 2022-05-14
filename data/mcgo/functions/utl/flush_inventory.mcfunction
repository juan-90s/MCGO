# flush health
effect give @s instant_health 1 250 true

# clear hotbar
replaceitem entity @s hotbar.2 air
replaceitem entity @s[nbt=!{Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] hotbar.3 air
replaceitem entity @s[nbt=!{Inventory:[{Slot:4b,id:"cgm:grenade"}]}] hotbar.4 air
replaceitem entity @s hotbar.5 air
replaceitem entity @s hotbar.6 air
replaceitem entity @s hotbar.7 air
replaceitem entity @s hotbar.8 air
replaceitem entity @s weapon.offhand air

# clear other inventory
replaceitem entity @s inventory.0 air
replaceitem entity @s inventory.1 air
replaceitem entity @s inventory.2 air
replaceitem entity @s inventory.3 air
replaceitem entity @s inventory.4 air
replaceitem entity @s inventory.5 air
replaceitem entity @s inventory.6 air
replaceitem entity @s inventory.7 air
replaceitem entity @s inventory.8 air
replaceitem entity @s inventory.9 air
replaceitem entity @s inventory.10 air
replaceitem entity @s inventory.11 air
replaceitem entity @s inventory.12 air
replaceitem entity @s inventory.13 air
replaceitem entity @s inventory.14 air
replaceitem entity @s inventory.15 air
replaceitem entity @s inventory.16 air
replaceitem entity @s inventory.17 air
replaceitem entity @s inventory.18 air
replaceitem entity @s inventory.19 air
replaceitem entity @s inventory.20 air
replaceitem entity @s inventory.21 air
replaceitem entity @s inventory.22 air
replaceitem entity @s inventory.23 air
replaceitem entity @s inventory.24 air
replaceitem entity @s inventory.25 air
replaceitem entity @s inventory.26 air

# flush weapon
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:assault_rifle"}]}] run function mcgo:utl/give_ar
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:rifle"}]}] run function mcgo:utl/give_hunter
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:shotgun"}]}] run function mcgo:utl/give_shotgun
execute as @s[nbt={Inventory:[{Slot:0b,id:"cgm:heavy_rifle"}]}] run function mcgo:utl/give_sniper
execute as @s run function mcgo:utl/give_pistol

replaceitem entity @s[nbt={Inventory:[{Slot:3b,id:"cgm:stun_grenade"}]}] hotbar.3 cgm:stun_grenade 1
replaceitem entity @s[nbt={Inventory:[{Slot:4b,id:"cgm:grenade"}]}] hotbar.4 cgm:grenade 1