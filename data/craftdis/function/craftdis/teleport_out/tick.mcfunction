scoreboard players add @s craftdis.teleport_progress 1

execute if score @s craftdis.teleport_progress matches 1 run effect give @s nausea 3 0 true
execute if score @s craftdis.teleport_progress matches 1 run playsound block.portal.trigger block @s ~ ~ ~ 1 1

execute if score @s craftdis.teleport_progress matches 80.. run function craftdis:craftdis/teleport_out/out_craftdis with storage craftdis:craftdis target_location
execute if score @s craftdis.teleport_progress matches 80.. run scoreboard players reset @s craftdis.teleport_progress
