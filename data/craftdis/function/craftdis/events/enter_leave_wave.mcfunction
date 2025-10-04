scoreboard players add $c.wave craftdis.misc 1
execute rotated ~10 0 run particle end_rod ^ ^1 ^ ^ ^ ^10000000000000 0.00000000000002 0 force @a[distance=..64]
execute rotated ~15 0 run particle end_rod ^ ^1 ^ ^ ^ ^10000000000000 0.00000000000001 0 force @a[distance=..64]
execute unless score $c.wave craftdis.misc matches 36.. rotated ~10 ~ run function craftdis:craftdis/events/enter_leave_wave
execute if score $c.wave craftdis.misc matches 36.. run scoreboard players reset $c.wave craftdis.misc