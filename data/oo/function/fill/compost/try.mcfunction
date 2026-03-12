function oo:utils/keep_alive
return run execute as @s if predicate {condition:"time_check",value:0,period:5} run function oo:fill/compost/compost