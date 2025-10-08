particle dust{color:[1.0,0.0,0.0],scale:1.25} ~ ~ ~ 0 0 0 0 1 normal @a

tp @s ^ ^ ^0.2

scoreboard players add @s craftdis.misc 1
execute if score @s craftdis.misc matches 40.. if predicate {condition:"random_chance",chance:0.26} run function craftdis:craftdis/redstone_particles/rotate/rotate
execute if entity @s[tag=craftdis.rotated] run function craftdis:craftdis/redstone_particles/rotate/loop

execute if predicate {"condition": "minecraft:location_check","predicate": {"position": {"y": {"min": 108}}}} run kill @s

# execute unless entity @s[tag=craftdis.ticked] run function craftdis:entity/dragon/beam_thingy/spawn_wave
# tag @s[tag=!craftdis.ticked] add craftdis.ticked
