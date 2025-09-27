data modify storage craftdis:craftdis destination set from block ~ ~ ~ Items

function craftdis:craftdis/destination/check_items

data remove storage craftdis:craftdis destination_data
data modify storage craftdis:craftdis destination_data set from storage craftdis:craftdis destination[{Slot:4b,id:"minecraft:enchanted_book"}].components."minecraft:custom_data".target

scoreboard players set $c.has_target craftdis.misc 0
execute if data storage craftdis:craftdis destination_data run scoreboard players set $c.has_target craftdis.misc 1

setblock ~ ~ ~ dispenser[facing=down,triggered=true] replace

execute if score $c.has_target craftdis.misc matches 1 if block 9 98 10 stone_button[powered=true] run function craftdis:craftdis/destination/set_target
