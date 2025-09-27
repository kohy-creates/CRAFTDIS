execute unless entity @n[distance=..0.5,type=marker,tag=craftdis.craftdis] run function craftdis:craftdis/initialize_craftdis/init

execute in craftdis:craftdis unless block 8 96 3 minecraft:smooth_stone_slab[type=top,waterlogged=false] run function craftdis:craftdis/post_gen/generate_tardis

execute in craftdis:craftdis run tp @s 8 200 8

tag @s add craftdis.teleport_into
schedule function craftdis:craftdis/teleport_in/scheduled 1t append
