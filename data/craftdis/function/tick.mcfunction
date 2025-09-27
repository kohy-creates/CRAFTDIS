execute as @e[type=!#craftdis:invalid_targets,predicate=craftdis:in_craftdis] at @s run function craftdis:craftdis/in_craftdis_tick

execute as @e[type=marker,tag=craftdis] at @s run function craftdis:marker_tick
