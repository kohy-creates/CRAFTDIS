scoreboard players add @s craftdis.misc2 1

execute if score @s craftdis.misc2 matches 6.. if predicate {condition:"random_chance",chance:0.5} run function craftdis:craftdis/redstone_particles/rotate/return_to_normal
