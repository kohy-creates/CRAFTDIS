forceload add ~ ~


scoreboard players set $c.valid_target craftdis.misc 0
execute if data storage craftdis:craftdis {target_location:{is_time:1}} run scoreboard players add $c.valid_target craftdis.misc 999
execute unless block ~ ~ ~ #pressure_plates unless block ~ ~ ~ light run scoreboard players remove $c.valid_target craftdis.misc 1

execute if score $c.valid_target craftdis.misc matches -1 run data remove storage craftdis:craftdis target_location
execute if score $c.valid_target craftdis.misc matches -1 run title @s actionbar {text:"There is no CRAFTDIS at that location",color:"red"}
execute if score $c.valid_target craftdis.misc matches -1 run forceload remove ~ ~
execute if score $c.valid_target craftdis.misc matches -1 run return 0

tp @s ~ ~ ~

# tag @s add craftdis.out_scheduled
# schedule function craftdis:craftdis/teleport_out/out_scheduled 1t append

execute if data storage craftdis:craftdis {target_location:{is_time:1}} run function craftdis:craftdis/teleport_out/timeline_create_craftdis

tag @n[type=marker,tag=craftdis.craftdis] add craftdis.freshly_teleported
tag @s add craftdis.freshly_teleported
