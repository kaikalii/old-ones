$execute unless data block ~ ~ ~ Items[{id:"minecraft:$(from)"}] run return 0
$execute store result score #temp oo run function oo:random/random {n:$(n)}
execute if score #temp oo matches 0 run return 0
$data modify block ~ ~ ~ Items[{id:"minecraft:$(from)"}].id set value "minecraft:$(to)"
