$loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_name","name":{"text":"Destination Data Book"},"target":"item_name"},{"function":"minecraft:set_lore","entity":"this","lore":[\
	{"text":"Target:","color":"#EEEEEE","bold":1,"italic":0},\
	{"text":" X: $(x)","color":"#EEEEEE","italic":0},\
	{"text":" Y: $(y)","color":"#EEEEEE","italic":0},\
	{"text":" Z: $(z)","color":"#EEEEEE","italic":0},\
	{"text":" Dimension: $(dimension_name)","color":"#EEEEEE","italic":0}\
	],"mode":"replace_all"},{"function":"minecraft:set_custom_data","tag":{"target":\
	{"x":$(x), "y":$(y), "z":$(z),"dimension":"$(dimension)", "name":"$(dimension_name)"}\
	}}]}]}],"functions":[]}
