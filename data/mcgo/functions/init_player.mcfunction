execute if data storage mcgo:game isStart run function mcgo:zelf/init_player
execute unless data storage mcgo:game isStart run tellraw @s [{"text":"The game is not started"}]