# Add alive timer
execute as @s[nbt={Age:0s},nbt=!{Item:{components:{}}}] unless data entity @s Thrower run data modify entity @s Item.components."minecraft:custom_data".Alive set value 400

# Thrown back
execute as @s[nbt=!{Item:{components:{"minecraft:custom_data":{Alive:0}}}}] if data entity @s Thrower at @s if block ~ ~ ~ water run function oo:fish/throw_back

# Update alive timer
function oo:fish/tick_inv {path:Item,slot:contents}