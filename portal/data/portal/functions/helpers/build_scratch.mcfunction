# A helper function to generate protected scratch space at 0,0.
# No inputs
# Run as op'd player.

# Remove all existing scratch space
fill -17 -50 -17 17 -31 17 air
fill -17 -30 -17 17 -11 17 air

# Add the boundaries
fill -17 -50 -17 -17 -11 17 barrier
fill -17 -50 17 17 -11 17 barrier
fill 17 -50 17 17 -11 -17 barrier
fill 17 -50 -17 -17 -11 -17 barrier
fill -17 -50 -17 17 -50 17 red_concrete
fill -16 -50 -16 16 -50 16 white_stained_glass
fill -17 -30 -17 17 -30 17 red_concrete
fill -16 -30 -16 16 -30 16 white_stained_glass
fill -17 -10 -17 17 -10 17 red_concrete
fill -16 -10 -16 16 -10 16 white_stained_glass
fill -17 -50 -17 -17 -11 -17 red_concrete
fill 17 -50 -17 17 -11 -17 red_concrete
fill -17 -50 17 -17 -11 17 red_concrete
fill 17 -50 17 17 -11 17 red_concrete

# Add the structure blocks
setblock -18 -30 -16 minecraft:structure_block[mode=save]\
    {posX:2,posY:1,posZ:0,sizeX:33,sizeY:19,sizeZ:33,name:"portal:scratch_destination",mode:"SAVE"}
setblock -18 -30 -15 minecraft:structure_block[mode=save]\
    {posX:2,posY:1,posZ:-1,name:"portal:scratch_destination",mode:"LOAD"}
setblock -18 -30 -14 minecraft:structure_block[mode=save]\
    {posX:34,posY:1,posZ:-2,name:"portal:scratch_destination",mode:"LOAD",rotation:"CLOCKWISE_90"}
setblock -18 -30 -13 minecraft:structure_block[mode=save]\
    {posX:34,posY:1,posZ:29,name:"portal:scratch_destination",mode:"LOAD",rotation:"CLOCKWISE_180"}
setblock -18 -30 -12 minecraft:structure_block[mode=save]{posX:2,\
    posY:1,posZ:28,name:"portal:scratch_destination",mode:"LOAD",rotation:"COUNTERCLOCKWISE_90"}
fill -19 -31 -16 -19 -31 -12 minecraft:command_block{Command:"setblock ~ ~1 ~ air"}