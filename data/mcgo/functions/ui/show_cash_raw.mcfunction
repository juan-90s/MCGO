# set cash cap
execute if score @s cash matches 10000.. run scoreboard players set @s cash 10000
# display message
tellraw @s [{"text":"Your cash now: ","color":"dark_green"},{"score":{"name":"@s","objective":"cash"},"color":"green"}]