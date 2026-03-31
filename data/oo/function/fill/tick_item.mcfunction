tag @s remove pickup

# Composting
execute if block ~ ~-1 ~ composter if items entity @s contents #oo:compostable align xz run tp ~0.5 ~ ~0.5
execute if block ~ ~ ~ composter if items entity @s contents #oo:compostable run return run function oo:fill/compost/try
# Campfire
execute if block ~ ~-0.2 ~ #campfires[lit=true] if items entity @s contents #oo:campfire_cookable align xz run tp ~0.5 ~ ~0.5
execute if block ~ ~ ~ #campfires[lit=true] if items entity @s contents #oo:campfire_cookable run return run function oo:fill/campfire/tick_item

tag @s add pickup

# TP products to barrels
execute as @s[nbt={Age:0s}] if items entity @s contents #oo:campfire_cooked if block ~ ~0.2 ~ #campfires[lit=true] if function oo:fill/find_barrel run return 0
# Filling
execute as @s[nbt={OnGround:0b}] run return 0
execute if block ~ ~-1 ~ barrel[facing=up] align xz run tp ~0.5 ~ ~0.5
execute positioned ~ ~-0.1 ~ if block ~ ~ ~ barrel[facing=up,open=true] run function oo:fill/fill {max_size:27}
