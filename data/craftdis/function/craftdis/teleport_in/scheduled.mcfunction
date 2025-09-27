execute as @a[tag=craftdis.teleport_into] in craftdis:craftdis as @e[type=marker,tag=craftdis.entrance,limit=1,sort=random] at @s facing 8 112 8 rotated ~ 0 run tp @p ~ ~ ~ ~ ~
execute as @a[tag=craftdis.teleport_into] run tag @s remove craftdis.teleport_into

