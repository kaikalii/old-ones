# Fill
execute as @e[type=item] at @s run function oo:fill/tick_item

# Open barrel
execute as @a at @s run function oo:hitscan {f:"if block ~ ~ ~ #oo:interact_barrel run return run function oo:fill/open_barrel"}