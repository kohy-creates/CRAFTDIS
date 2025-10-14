execute if entity @n[type=marker,tag=craftdis.craftdis,distance=..1.5] run return 1

# setblock ~ ~ ~ stone_pressure_plate
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 smooth_stone replace
fill ~2 ~ ~2 ~-2 ~3 ~-2 air replace

setblock ~-1 ~ ~ minecraft:iron_door[hinge=right,facing=north,powered=false,half=lower,open=false] replace
setblock ~-1 ~1 ~ minecraft:iron_door[hinge=right,facing=north,powered=false,half=upper,open=false] replace

setblock ~ ~ ~-1 minecraft:iron_door[hinge=right,facing=east,powered=false,half=lower,open=false] replace
setblock ~ ~1 ~-1 minecraft:iron_door[hinge=right,facing=east,powered=false,half=upper,open=false] replace

setblock ~1 ~ ~ minecraft:iron_door[hinge=right,facing=south,powered=false,half=lower,open=false] replace
setblock ~1 ~1 ~ minecraft:iron_door[hinge=right,facing=south,powered=false,half=upper,open=false] replace

setblock ~ ~ ~1 minecraft:iron_door[hinge=right,facing=west,powered=false,half=lower,open=false] replace
setblock ~ ~1 ~1 minecraft:iron_door[hinge=right,facing=west,powered=false,half=upper,open=false] replace

setblock ~ ~2 ~ iron_block replace

execute align xyz run summon marker ~0.5 ~0.01 ~0.5 {Tags:["craftdis","craftdis.craftdis","craftdis.freshly_teleported"]}
