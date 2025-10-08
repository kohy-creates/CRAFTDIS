execute store result score $c.enabled craftdis.misc positioned 6 98 8 if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:location_check",predicate:{block:{predicates:{"minecraft:container":{items:{contains:[\
		{items:"minecraft:clock",count:{min:16}}\
	]}}}}}}]}

execute if score $c.enabled craftdis.misc matches 1 if block ~ ~ ~ waxed_weathered_chiseled_copper facing 8 ~ 8 run function craftdis:craftdis/upgrades/doors/remove
execute if score $c.enabled craftdis.misc matches 0 unless block ~ ~ ~ waxed_weathered_chiseled_copper facing 8 ~ 8 run function craftdis:craftdis/upgrades/doors/place

execute if score $c.enabled craftdis.misc matches 1 run advancement grant @a[distance=..16] only craftdis:craftdis/unlock_time_travel
