execute as @e[type=!#craftdis:invalid_targets,predicate=craftdis:in_craftdis] at @s run function craftdis:craftdis/in_craftdis_tick
execute as @e[type=!#craftdis:invalid_targets,tag=craftdis.freshly_teleported,predicate=!craftdis:in_craftdis] at @s run function craftdis:craftdis/freshly_teleported_tick

execute as @e[type=marker,tag=craftdis] at @s run function craftdis:marker_tick

execute in craftdis:craftdis if predicate {condition:"random_chance",chance:0.1} positioned 8 93 8 run function craftdis:craftdis/redstone_particles/check_spawn
