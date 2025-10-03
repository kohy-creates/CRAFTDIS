execute unless predicate craftdis:in_craftdis unless block ~ ~ ~ light run function craftdis:craftdis/main_marker/destroy_craftdis

execute if entity @s[tag=craftdis.freshly_teleported] run function craftdis:craftdis/main_marker/freshly_teleported_loop
