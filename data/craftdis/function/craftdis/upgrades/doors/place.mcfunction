setblock ^ ^ ^ minecraft:waxed_weathered_chiseled_copper
setblock ^1 ^ ^ minecraft:waxed_weathered_chiseled_copper
setblock ^-1 ^ ^ minecraft:waxed_weathered_chiseled_copper
setblock ^ ^1 ^ minecraft:waxed_weathered_chiseled_copper
setblock ^ ^-1 ^ minecraft:waxed_weathered_chiseled_copper

setblock ^1 ^1 ^ minecraft:waxed_weathered_copper
setblock ^-1 ^1 ^ minecraft:waxed_weathered_copper
setblock ^-1 ^-1 ^ minecraft:waxed_weathered_copper
setblock ^1 ^-1 ^ minecraft:waxed_weathered_copper

playsound minecraft:block.iron_door.close block @a[distance=0..] ~ ~ ~ 2 0.8
playsound minecraft:block.iron_trapdoor.close block @a[distance=0..] ~ ~ ~ 2 0.8
playsound minecraft:block.stone_button.click_off block @a[distance=0..] ~ ~ ~ 2 0.8

particle minecraft:dust{color:[1.0,0.0,0.0],scale:3} ~ ~ ~ 1.5 1.5 1.5 10 65 normal
