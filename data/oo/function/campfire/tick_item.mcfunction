execute if block ~ ~ ~ #campfires[lit=true] run function oo:utils/keep_alive

execute store result score #num_cooking oo run data get block ~ ~ ~ Items
execute if score #num_cooking oo matches 4 run return 0

data modify storage oo:macro item.id set from entity @s Item.id
data modify storage oo:macro item.components set from entity @s Item.components
data modify storage oo:macro item.Slot set value 0b
execute unless data block ~ ~ ~ Items[{Slot:0b}] run function oo:campfire/add {slot:0}
data modify storage oo:macro item.Slot set value 1b
execute unless data block ~ ~ ~ Items[{Slot:1b}] run function oo:campfire/add {slot:1}
data modify storage oo:macro item.Slot set value 2b
execute unless data block ~ ~ ~ Items[{Slot:2b}] run function oo:campfire/add {slot:2}
data modify storage oo:macro item.Slot set value 3b
execute unless data block ~ ~ ~ Items[{Slot:3b}] run function oo:campfire/add {slot:3}
