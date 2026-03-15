execute unless data entity @s SelectedItem.components."minecraft:enchantments"."oo:potential" run return 0

execute store result score #damage oo run data get entity @s SelectedItem.components."minecraft:damage"
scoreboard players set #remaining oo 20
scoreboard players operation #remaining oo -= #damage oo
execute if score #remaining oo matches ..5