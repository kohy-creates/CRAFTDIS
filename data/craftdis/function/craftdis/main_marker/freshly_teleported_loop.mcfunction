execute if entity @e[type=!#craftdis:invalid_targets,tag=craftdis.freshly_teleported,distance=..1.5] run setblock ~ ~ ~ light[level=0] replace

execute unless entity @e[type=!#craftdis:invalid_targets,tag=craftdis.freshly_teleported,distance=..1.5] run setblock ~ ~ ~ stone_pressure_plate replace
execute unless entity @e[type=!#craftdis:invalid_targets,tag=craftdis.freshly_teleported,distance=..1.5] run tag @s remove craftdis.freshly_teleported

execute unless entity @e[type=!#craftdis:invalid_targets,tag=craftdis.freshly_teleported,distance=..1.5] run forceload remove ~ ~
