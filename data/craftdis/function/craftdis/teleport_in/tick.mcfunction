scoreboard players add @s craftdis.teleport_progress 1

execute if score @s craftdis.teleport_progress matches 1 run function craftdis:craftdis/enter_leave_start_effects

function craftdis:craftdis/in_craftdis_tp_effects

execute if score @s craftdis.teleport_progress matches 80.. run function craftdis:craftdis/teleport_in/into_craftdis
execute if score @s craftdis.teleport_progress matches 80.. run scoreboard players reset @s craftdis.teleport_progress
