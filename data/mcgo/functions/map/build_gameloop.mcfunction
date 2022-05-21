setblock ~1 ~ ~4 redstone_wire[east=side,west=side]
setblock ~2 ~ ~4 command_block[facing=east]

setblock ~ ~ ~1 lever[face=floor,facing=south]
setblock ~ ~ ~2 comparator[facing=north,mode=subtract]
setblock ~ ~ ~3 repeater[facing=north,delay=2]
setblock ~ ~ ~4 redstone_wire[east=side,north=side,south=side,west=side]
setblock ~ ~ ~5 repeater[facing=north,delay=4]
setblock ~ ~ ~6 command_block[facing=south]

setblock ~-1 ~ ~2 repeater[facing=west,delay=4]
setblock ~-1 ~ ~3 birch_sign[rotation=8]
setblock ~-1 ~ ~4 repeater[facing=east,delay=2]

setblock ~-2 ~ ~2 redstone_wire[east=side,south=side]
setblock ~-2 ~ ~3 repeater[facing=south,delay=2]
setblock ~-2 ~ ~4 redstone_wire[east=side,north=side,south=side]
setblock ~-2 ~ ~5 repeater[facing=north,delay=4]
setblock ~-2 ~ ~6 command_block[facing=south]

data merge block ~2 ~ ~4 {Command:"function mcgo:countdown"}
data merge block ~ ~ ~6 {Command:"function mcgo:start_round"}
data merge block ~-2 ~ ~6 {Command:"function mcgo:judge_round"}
data merge block ~-1 ~ ~3 {Text2:'{"text":"MC:GO"}',Text3:'{"text":"GameLoop"}'}
