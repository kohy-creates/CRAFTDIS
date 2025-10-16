$loot replace block ~ ~ ~ container.4 loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_name","name":{"text":"Destination Data Book"},"target":"item_name"},{"function":"minecraft:set_lore","entity":"this","lore":[\
	{"text":"Target:","color":"#EEEEEE","bold":1,"italic":0},\
	[{"text":" X: ","color":"#EEEEEE","italic":0,"obfuscated":0},{"text":"$(x)","color":"#EEEEEE","italic":0,"obfuscated":1}],\
	[{"text":" Y: ","color":"#EEEEEE","italic":0,"obfuscated":0},{"text":"$(y)","color":"#EEEEEE","italic":0,"obfuscated":1}],\
	[{"text":" Z: ","color":"#EEEEEE","italic":0,"obfuscated":0},{"text":"$(z)","color":"#EEEEEE","italic":0,"obfuscated":1}],\
	{"text":" Year: $(dimension_name)","color":"#EEEEEE","italic":0}\
	],"mode":"replace_all"},{"function":"minecraft:set_custom_data","tag":{"target":\
	{"x":$(x), "y":$(y), "z":$(z),"dimension":"$(dimension)", "name":"$(dimension_name)","is_time":true}\
	}}]}]}],"functions":[]}

advancement grant @a[distance=0..] only craftdis:craftdis/research_any_time
