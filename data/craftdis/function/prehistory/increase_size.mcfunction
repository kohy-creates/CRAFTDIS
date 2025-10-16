tag @s add craftdis.prehistory.sized

execute unless dimension craftdis:prehistory run return 0

attribute @s gravity base set 0.06

attribute @s[type=chicken] scale base set 20
attribute @s[type=bat] scale base set 10
attribute @s[type=tropical_fish] scale base set 20

attribute @s movement_speed base set 0.6
attribute @s flying_speed base set 0.6

attribute @s max_health base set 100
data modify entity @s Health set value 100

data modify entity @s DeathLootTable set value "craftdis:dinosaur"
