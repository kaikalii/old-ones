data modify storage oo:macro fill set from entity @s Item
data modify storage oo:macro fill merge value {components: {}}

# If the container has all slots filled, try to fill with 1 item at a time
execute store result score #item_count oo run data get block ~ ~ ~ Items
$execute if score #item_count oo matches $(max_size) run return run function oo:fill/fill_slow with storage oo:macro fill

# Otherwise put the whole stack in there
function oo:fill/fill_fast with storage oo:macro fill
