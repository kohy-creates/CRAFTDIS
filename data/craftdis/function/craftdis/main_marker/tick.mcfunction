execute if score @s craftdis.age matches 100.. unless predicate craftdis:in_craftdis unless block ~ ~ ~ light run function craftdis:craftdis/main_marker/destroy_craftdis

execute if score @s craftdis.age matches 99.. if entity @s[tag=craftdis.freshly_teleported] run function craftdis:craftdis/main_marker/freshly_teleported_loop

function craftdis:craftdis/main_marker/vfx

execute unless score @s craftdis.age matches 100.. run scoreboard players add @s craftdis.age 1
