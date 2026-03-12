function oo:utils/keep_alive
execute as @s unless predicate {condition:"time_check",value:0,period:5} run return 0
function oo:fill/campfire/try_add
return 1