# Update compost timer
scoreboard players add #compost_timer oo 1
execute if score #compost_timer oo matches 5 run scoreboard players set #compost_timer oo 0

# Fill
execute as @e[type=item] at @s run function oo:fill/tick_item

# Keep barrel open
execute as @a run function oo:hitscan {f:"if block ~ ~ ~ barrel[facing=up] if items block ~ ~ ~ container.* #oo:props_open_barrel run setblock ~ ~ ~ barrel[facing=up,open=true]"}