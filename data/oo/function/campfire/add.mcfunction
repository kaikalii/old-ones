execute store result score #count oo run data get entity @s Item.count
execute if score #count oo matches 0 run return 0

$data modify block ~ ~ ~ CookingTotalTimes[$(slot)] set value 600
$data modify block ~ ~ ~ CookingTimes[$(slot)] set value 0
data modify block ~ ~ ~ Items append from storage oo:macro item
item modify entity @s contents {function:"set_count", count:-1, add:true}
