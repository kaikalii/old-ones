advancement revoke @s only oo:used_tool

# Enchant with aqua affinity
execute as @s[nbt={OnGround:1b}] if data entity @s equipment.head.components."minecraft:enchantments"."oo:potential" unless data entity @s equipment.head.components."minecraft:enchantments"."minecraft:aqua_affinity" if block ~ ~ ~ water if block ~ ~1 ~ water run function oo:enchant/with {slot:armor.head, ench:aqua_affinity}

execute store result score #rand oo run random value 1..120
# say rolled
execute if score #rand oo matches 1 if data entity @s SelectedItem.components."minecraft:enchantments"."oo:potential" run function oo:enchant/with {slot:weapon.mainhand, ench:efficiency}
