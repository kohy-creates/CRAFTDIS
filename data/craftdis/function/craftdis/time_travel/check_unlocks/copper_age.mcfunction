execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:location_check",predicate:{block:{predicates:{"minecraft:container":{items:{contains:[\
		{items:"minecraft:copper_block",count:64},\
		{items:"minecraft:honeycomb",count:32}\
	]}}}}}}]} run tag @s add craftdis.timeline.unlocked

execute if entity @s[tag=!craftdis.timeline.unlocked] run return 0

execute if entity @s[tag=craftdis.timeline.unlocked,tag=craftdis.timeline.spawned_book] run function craftdis:craftdis/time_travel/allow_only_book
execute if entity @s[tag=craftdis.timeline.unlocked,tag=craftdis.timeline.spawned_book] run return 1

data merge block ~ ~ ~ {Items:[]}

data modify entity @n[type=text_display,tag=craftdis.timeline] text set value {extra: [{bold: 1b, color: "#14DEA8", text: "2199", obfuscated: 0b}], text: ""}

execute align xyz positioned ~.5 ~.5 ~.5 run particle dust{color:[1,0,0],scale:1.5} ~ ~ ~ 0.35 0.35 0.35 1 40

playsound minecraft:entity.lightning_bolt.thunder block @a[distance=0..] ~ ~ ~ 1 0.5
playsound minecraft:entity.lightning_bolt.thunder block @a[distance=0..] ~ ~ ~ 1 2
playsound minecraft:entity.mooshroom.convert block @a[distance=0..] ~ ~ ~ 0.75 1.5

data merge storage craftdis:craftdis {target:{x:0,y:64,z:0,dimension:"craftdis:copper_age",dimension_name:"2199"}}
function craftdis:craftdis/time_travel/give_book with storage craftdis:craftdis target

tag @s add craftdis.timeline.spawned_book
