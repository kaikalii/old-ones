execute store result score #rand oo run random value 0..199
execute unless score #rand oo matches 0 run return fail

execute unless data entity @s SelectedItem.components."minecraft:enchantments"."oo:potential" run return fail

return 1