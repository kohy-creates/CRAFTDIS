data remove storage craftdis:craftdis checked_slot
$data modify storage craftdis:craftdis checked_slot set from storage craftdis:craftdis slots[{Slot:$(slot)b}]

execute unless data storage craftdis:craftdis checked_slot run return -1

scoreboard players set $c.not_allowed_item craftdis.misc 0
$execute if data storage craftdis:craftdis checked_slot unless data storage craftdis:craftdis {slots:[{Slot:$(slot)b,id:"$(allowed)"}]} run scoreboard players set $c.not_allowed_item craftdis.misc 1

execute if score $c.not_allowed_item craftdis.misc matches 1 \
	unless data storage craftdis:craftdis checked_slot.components \
	run function craftdis:craftdis/dispenser_pop_items/pop_item_no_components with storage craftdis:craftdis checked_slot
execute if score $c.not_allowed_item craftdis.misc matches 1 \
	if data storage craftdis:craftdis checked_slot.components \
	run function craftdis:craftdis/dispenser_pop_items/pop_item with storage craftdis:craftdis checked_slot
execute if score $c.not_allowed_item craftdis.misc matches 1 run return 0

$scoreboard players set $is_slot_4 craftdis.misc $(slot)
execute if score $is_slot_4 craftdis.misc matches 4 run return 4

scoreboard players set $c.has_space craftdis.misc 0
execute if data storage craftdis:craftdis checked_slot unless data storage craftdis:craftdis slots[{Slot:4b}] run scoreboard players set $c.has_space craftdis.misc 1

$execute if score $c.has_space craftdis.misc matches 1 run item replace block ~ ~ ~ container.4 from block ~ ~ ~ container.$(slot)
$execute if score $c.has_space craftdis.misc matches 1 run item replace block ~ ~ ~ container.$(slot) with air
execute if score $c.has_space craftdis.misc matches 1 run return 1

execute unless data storage craftdis:craftdis checked_slot.components \
	run function craftdis:craftdis/dispenser_pop_items/pop_item_no_components with storage craftdis:craftdis checked_slot
execute if data storage craftdis:craftdis checked_slot.components \
	run function craftdis:craftdis/dispenser_pop_items/pop_item with storage craftdis:craftdis checked_slot
