scoreboard players set $c.save_chance craftdis.misc 0


execute store result score $c.enabled craftdis.misc if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:location_check",predicate:{block:{predicates:{"minecraft:container":{items:{contains:[\
		{items:"minecraft:nether_star",count:{min:1}}\
	]}}}}}}]}
execute if score $c.enabled craftdis.misc matches 1 run scoreboard players add $c.save_chance craftdis.misc 20

execute store result score $c.enabled craftdis.misc if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:location_check",predicate:{block:{predicates:{"minecraft:container":{items:{contains:[\
		{items:"minecraft:dragon_egg",count:{min:1}}\
	]}}}}}}]}
execute if score $c.enabled craftdis.misc matches 1 run scoreboard players add $c.save_chance craftdis.misc 50

execute store result score $c.enabled craftdis.misc if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:location_check",predicate:{block:{predicates:{"minecraft:container":{items:{contains:[\
		{items:"minecraft:conduit",count:{min:1}}\
	]}}}}}}]}
execute if score $c.enabled craftdis.misc matches 1 run scoreboard players add $c.save_chance craftdis.misc 10
