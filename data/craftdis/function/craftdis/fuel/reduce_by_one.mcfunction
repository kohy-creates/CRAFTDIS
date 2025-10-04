execute store result score $c.should_save craftdis.misc run random value 1..100
execute if score $c.should_save craftdis.misc < $c.save_chance craftdis.misc run return 1

scoreboard players remove $c.fuel craftdis.misc 1
execute store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get $c.fuel craftdis.misc 

execute if score $c.fuel craftdis.misc matches 0 run item replace block ~ ~ ~ container.4 with air
