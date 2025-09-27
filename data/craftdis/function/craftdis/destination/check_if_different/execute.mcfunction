$data modify storage craftdis:craftdis check_if_different.arg set value "$(arg)"
$data modify storage craftdis:craftdis check_if_different.value set from storage craftdis:craftdis destination_data.$(arg)

execute unless data storage craftdis:craftdis {check_if_different:{arg:"dimension"}} store result score $c.different craftdis.misc run function craftdis:craftdis/destination/check_if_different/check_inner with storage craftdis:craftdis check_if_different
execute if data storage craftdis:craftdis {check_if_different:{arg:"dimension"}} store result score $c.different craftdis.misc run function craftdis:craftdis/destination/check_if_different/check_inner_dimension with storage craftdis:craftdis check_if_different
$execute if score $c.different craftdis.misc matches 0 run data modify storage craftdis:craftdis target_location.$(arg) set from storage craftdis:craftdis destination_data.$(arg)

execute if score $c.different craftdis.misc matches 0 run \
	scoreboard players add $c.differences craftdis.misc 1
