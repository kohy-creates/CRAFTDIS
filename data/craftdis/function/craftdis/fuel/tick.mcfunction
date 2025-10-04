data modify storage craftdis:craftdis fuel set from block ~ ~ ~ Items

function craftdis:craftdis/fuel/check_items

# Count the fuel
execute store result score $c.fuel craftdis.misc run data get storage craftdis:craftdis fuel[{Slot:4b,id:"minecraft:redstone_block"}].count

# Get fuel percentage
scoreboard players operation $c.fuel.percent craftdis.misc = $c.fuel craftdis.misc
scoreboard players operation $c.fuel.percent craftdis.misc *= #100 craftdis.misc

scoreboard players operation $c.fuel.percent craftdis.misc /= #64 craftdis.misc

execute if score $c.fuel.percent craftdis.misc matches ..9 \
	if score $c.fuel craftdis.misc matches 1.. run scoreboard players set $c.fuel.percent craftdis.misc 1

execute if score $c.fuel.percent craftdis.misc matches 1..10 run scoreboard players set $c.fuel.percent craftdis.misc 10
execute if score $c.fuel.percent craftdis.misc matches 11..20 run scoreboard players set $c.fuel.percent craftdis.misc 20
execute if score $c.fuel.percent craftdis.misc matches 21..30 run scoreboard players set $c.fuel.percent craftdis.misc 30
execute if score $c.fuel.percent craftdis.misc matches 31..40 run scoreboard players set $c.fuel.percent craftdis.misc 40
execute if score $c.fuel.percent craftdis.misc matches 41..50 run scoreboard players set $c.fuel.percent craftdis.misc 50
execute if score $c.fuel.percent craftdis.misc matches 51..60 run scoreboard players set $c.fuel.percent craftdis.misc 60
execute if score $c.fuel.percent craftdis.misc matches 61..70 run scoreboard players set $c.fuel.percent craftdis.misc 70
execute if score $c.fuel.percent craftdis.misc matches 71..80 run scoreboard players set $c.fuel.percent craftdis.misc 80
execute if score $c.fuel.percent craftdis.misc matches 81..90 run scoreboard players set $c.fuel.percent craftdis.misc 90
execute if score $c.fuel.percent craftdis.misc matches 91..100 run scoreboard players set $c.fuel.percent craftdis.misc 100

execute as @n[type=text_display,tag=craftdis.fuel_display] run function craftdis:craftdis/fuel/update_display

execute if score $c.fuel.percent craftdis.misc matches 0..30 unless biome ~ ~ ~ craftdis:redstone/none run fillbiome -8 92 24 24 97 -8 craftdis:redstone/none
execute if score $c.fuel.percent craftdis.misc matches 31..60 unless biome ~ ~ ~ craftdis:redstone/low run fillbiome -8 92 24 24 97 -8 craftdis:redstone/low
execute if score $c.fuel.percent craftdis.misc matches 61..90 unless biome ~ ~ ~ craftdis:redstone/medium run fillbiome -8 92 24 24 97 -8 craftdis:redstone/medium
execute if score $c.fuel.percent craftdis.misc matches 91..100 unless biome ~ ~ ~ craftdis:redstone/high run fillbiome -8 92 24 24 97 -8 craftdis:redstone/high

execute if score $c.fuel craftdis.misc matches 64 run advancement grant @p only craftdis:craftdis/max_fuel
