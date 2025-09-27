execute align xyz run summon marker ~0.5 ~0.01 ~0.5 {Tags:["craftdis.craftdis"]}

data modify storage craftdis:craftdis target.x set from entity @n[type=marker,tag=craftdis.craftdis] Pos[0]
data modify storage craftdis:craftdis target.y set from entity @n[type=marker,tag=craftdis.craftdis] Pos[1]
data modify storage craftdis:craftdis target.z set from entity @n[type=marker,tag=craftdis.craftdis] Pos[2]

function #craftdis:craftdis_dimension_check

function craftdis:craftdis/initialize_craftdis/give_book with storage craftdis:craftdis target
