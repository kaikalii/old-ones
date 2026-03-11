execute store success score #has_item oo run data get block ~ ~ ~ Items[0]
execute if score #has_item oo matches 0 run return 0

data modify storage oo:macro drain set from block ~ ~ ~ Items[0]
data remove block ~ ~ ~ Items[0]
execute at @s run function oo:drain/spawn_item with storage oo:macro drain
advancement grant @p only oo:adventure/drain_container