advancement revoke @s only oo:used_tool

# Enchant with aqua affinity
execute as @s[nbt={OnGround:1b}] at @s if data entity @s equipment.head.components."minecraft:enchantments"."oo:potential" unless data entity @s equipment.head.components."minecraft:enchantments"."minecraft:aqua_affinity" if block ~ ~ ~ water if block ~ ~1 ~ water run function oo:enchant/with {slot:armor.head, ench:aqua_affinity}

# Enchant with efficiency
execute store result score #rand oo run random value 1..120
scoreboard players set #efficiency oo 0
execute store result score #efficiency oo run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:efficiency"
execute unless score #efficiency oo matches 6.. if score #rand oo matches 1 if data entity @s SelectedItem.components."minecraft:enchantments"."oo:potential" run function oo:enchant/with {slot:weapon.mainhand, ench:efficiency}
