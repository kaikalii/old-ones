# Composting
execute if block ~ ~-1 ~ composter if items entity @s contents #oo:compostable align xz run tp ~0.5 ~ ~0.5
execute if block ~ ~ ~ composter if items entity @s contents #oo:compostable run return run execute if score #compost_timer oo matches 0 run function oo:fill/compost
# Filling
execute store result score #temp oo run data get entity @s OnGround
execute if score #temp oo matches 0 run return 0
execute if block ~ ~-1 ~ barrel[facing=up] align xz run tp ~0.5 ~ ~0.5
execute positioned ~ ~-1 ~ if block ~ ~ ~ barrel[facing=up,open=true] run function oo:fill/fill {max_size:27}
