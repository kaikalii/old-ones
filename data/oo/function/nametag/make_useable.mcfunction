execute store result score #temp oo run data get entity @s SelectedItem.components."minecraft:custom_name"
execute if score #temp oo matches 0 run return run item modify entity @s weapon.mainhand oo:make_nametag_nameable
item modify entity @s weapon.mainhand oo:make_nametag_usable