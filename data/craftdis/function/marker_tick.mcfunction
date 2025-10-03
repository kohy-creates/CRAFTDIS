execute if entity @s[tag=craftdis.fuel] run function craftdis:craftdis/fuel/tick
execute if entity @s[tag=craftdis.destination] run function craftdis:craftdis/destination/tick
execute if entity @s[tag=craftdis.exit] run function craftdis:craftdis/exit/tick

execute if entity @s[tag=craftdis.craftdis] run function craftdis:craftdis/main_marker/tick

execute if entity @s[tag=craftdis.upgrade] run function craftdis:craftdis/upgrades/tick_specific/all
execute if entity @s[tag=craftdis.upgrades] run function craftdis:craftdis/upgrades/tick
