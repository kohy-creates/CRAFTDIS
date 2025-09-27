scoreboard players set $c.differences craftdis.misc 0

function craftdis:craftdis/destination/check_if_different/execute {arg:x}
function craftdis:craftdis/destination/check_if_different/execute {arg:y}
function craftdis:craftdis/destination/check_if_different/execute {arg:z}
function craftdis:craftdis/destination/check_if_different/execute {arg:dimension}
function craftdis:craftdis/destination/check_if_different/execute {arg:name}

return run scoreboard players get $c.differences craftdis.misc
