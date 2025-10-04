execute if entity @e[type=!#craftdis:invalid_targets,tag=craftdis.freshly_teleported,distance=..1.5] run setblock ~ ~ ~ light[level=0] replace

execute unless entity @e[type=!#craftdis:invalid_targets,tag=craftdis.freshly_teleported,distance=..1.5] run function craftdis:craftdis/main_marker/finish_fresh_tp
