execute store success score #has_item oo run data get block ~ ~ ~ Items[{Slot:2b}]
execute if score #has_item oo matches 0 run return 0

data modify storage oo:macro drain set from block ~ ~ ~ Items[{Slot:2b}]
data remove block ~ ~ ~ Items[{Slot:2b}]
execute at @s run function oo:drain/spawn_item with storage oo:macro drain
advancement grant @p only oo:adventure/drain_container
