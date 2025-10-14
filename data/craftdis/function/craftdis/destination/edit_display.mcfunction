data modify storage craftdis:craftdis text set from entity @s text.extra

data modify storage craftdis:craftdis text[2].extra[1].text set string storage craftdis:craftdis target_location.x
data modify storage craftdis:craftdis text[2].extra[5].text set string storage craftdis:craftdis target_location.y
data modify storage craftdis:craftdis text[2].extra[9].text set string storage craftdis:craftdis target_location.z
data modify storage craftdis:craftdis text[4].text set string storage craftdis:craftdis target_location.name



data modify entity @s text.extra set from storage craftdis:craftdis text
