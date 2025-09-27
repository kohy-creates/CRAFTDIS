execute if score $c.fuel.percent craftdis.misc matches 0 run \
	data modify entity @s text.extra[2] set value {color: "black", text:"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛"}

execute if score $c.fuel.percent craftdis.misc matches 10 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛", extra:[{color:"black","text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 20 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛", extra:[{color:"black","text":"⬛⬛⬛⬛⬛⬛⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 30 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛", extra:[{color:"black","text":"⬛⬛⬛⬛⬛⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 40 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛⬛", extra:[{color:"black","text":"⬛⬛⬛⬛⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 50 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛⬛⬛", extra:[{color:"black","text":"⬛⬛⬛⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 60 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛⬛⬛⬛", extra:[{color:"black","text":"⬛⬛⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 70 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛⬛⬛⬛⬛", extra:[{color:"black","text":"⬛⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 80 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛⬛⬛⬛⬛⬛", extra:[{color:"black","text":"⬛⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 90 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛⬛⬛⬛⬛⬛⬛", extra:[{color:"black","text":"⬛"}]}
execute if score $c.fuel.percent craftdis.misc matches 100 run \
	data modify entity @s text.extra[2] set value {color: "red", text:"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛"}
