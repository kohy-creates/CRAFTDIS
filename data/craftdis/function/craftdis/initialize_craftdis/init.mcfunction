execute align xyz run summon marker ~0.5 ~0.01 ~0.5 {Tags:["craftdis.craftdis","craftdis"]}

execute store result score $c.x craftdis.misc run data get entity @n[type=marker,tag=craftdis.craftdis] Pos[0]
execute store result score $c.y craftdis.misc run data get entity @n[type=marker,tag=craftdis.craftdis] Pos[1]
execute store result score $c.z craftdis.misc run data get entity @n[type=marker,tag=craftdis.craftdis] Pos[2]

execute store result storage craftdis:craftdis target.x int 1 run scoreboard players get $c.x craftdis.misc
execute store result storage craftdis:craftdis target.y int 1 run scoreboard players get $c.y craftdis.misc
execute store result storage craftdis:craftdis target.z int 1 run scoreboard players get $c.z craftdis.misc


function #craftdis:craftdis_dimension_check

function craftdis:craftdis/initialize_craftdis/give_book with storage craftdis:craftdis target
