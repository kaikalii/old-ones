# Increase potential
execute if items entity @s player.cursor *[lore=["Increased Potential"]] run function oo:enchant/player_increase
execute if items entity @s container.* *[lore=["Increased Potential"]] run function oo:enchant/player_increase

# Potential potions
scoreboard players remove @s oo.drink 32
execute if score @s oo.drink matches ..0 run scoreboard players set @s oo.drink 0
execute if score @s oo.drink matches 32 run function oo:enchant/drank_potion

# Get damage
scoreboard players set #mainhand_damage oo 0
scoreboard players set #offhand_damage oo 0
scoreboard players set #head_damage oo 0
scoreboard players set #chest_damage oo 0
scoreboard players set #legs_damage oo 0
scoreboard players set #feet_damage oo 0
execute store result score #mainhand_damage oo run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score #offhand_damage oo run data get entity @s equipment.offhand.components."minecraft:damage"
execute store result score #head_damage oo run data get entity @s equipment.head.components."minecraft:damage"
execute store result score #chest_damage oo run data get entity @s equipment.chest.components."minecraft:damage"
execute store result score #legs_damage oo run data get entity @s equipment.legs.components."minecraft:damage"
execute store result score #feet_damage oo run data get entity @s equipment.feet.components."minecraft:damage"

# Get potential
scoreboard players set #mainhand_potential oo 0
scoreboard players set #offhand_potential oo 0
scoreboard players set #head_potential oo 0
scoreboard players set #chest_potential oo 0
scoreboard players set #legs_potential oo 0
scoreboard players set #feet_potential oo 0
execute store result score #mainhand_potential oo run data get entity @s SelectedItem.components."minecraft:enchantments"."oo:potential"
execute store result score #offhand_potential oo run data get entity @s equipment.offhand.components."minecraft:enchantments"."oo:potential"
execute store result score #head_potential oo run data get entity @s equipment.head.components."minecraft:enchantments"."oo:potential"
execute store result score #chest_potential oo run data get entity @s equipment.chest.components."minecraft:enchantments"."oo:potential"
execute store result score #legs_potential oo run data get entity @s equipment.legs.components."minecraft:enchantments"."oo:potential"
execute store result score #feet_potential oo run data get entity @s equipment.feet.components."minecraft:enchantments"."oo:potential"

# Get required potential
scoreboard players set #mainhand_pot_req oo 1
scoreboard players set #offhand_pot_req oo 1
scoreboard players set #head_pot_req oo 1
scoreboard players set #chest_pot_req oo 1
scoreboard players set #legs_pot_req oo 1
scoreboard players set #feet_pot_req oo 1
execute if items entity @s weapon.mainhand #oo:tools/golden run scoreboard players set #mainhand_pot oo 2
execute if items entity @s weapon.offhand #oo:tools/golden run scoreboard players set #offhand_pot oo 2
execute if items entity @s armor.head #oo:armor/golden run scoreboard players set #head_pot oo 2
execute if items entity @s armor.chest #oo:armor/golden run scoreboard players set #chest_pot oo 2
execute if items entity @s armor.legs #oo:armor/golden run scoreboard players set #legs_pot oo 2
execute if items entity @s armor.feet #oo:armor/golden run scoreboard players set #feet_pot oo 2

# Set remaining if has required potential
scoreboard players set #mainhand_remaining oo 0
scoreboard players set #offhand_remaining oo 0
scoreboard players set #head_remaining oo 0
scoreboard players set #chest_remaining oo 0
scoreboard players set #legs_remaining oo 0
scoreboard players set #feet_remaining oo 0
execute if score #head_potential oo >= #head_pot_req oo run function oo:enchant/set_remaining_head
execute if score #chest_potential oo >= #chest_pot_req oo run function oo:enchant/set_remaining_chest
execute if score #legs_potential oo >= #legs_pot_req oo run function oo:enchant/set_remaining_legs
execute if score #feet_potential oo >= #feet_pot_req oo run function oo:enchant/set_remaining_feet
execute if score #mainhand_potential oo >= #mainhand_pot_req oo run function oo:enchant/set_remaining_mainhand
execute if score #offhand_potential oo >= #offhand_pot_req oo run function oo:enchant/set_remaining_offhand

# Calc actual remaining
scoreboard players operation #mainhand_remaining oo -= #mainhand_damage oo
scoreboard players operation #offhand_remaining oo -= #offhand_damage oo
scoreboard players operation #head_remaining oo -= #head_damage oo
scoreboard players operation #chest_remaining oo -= #chest_damage oo
scoreboard players operation #legs_remaining oo -= #legs_damage oo
scoreboard players operation #feet_remaining oo -= #feet_damage oo

# Enchant
execute if score #mainhand_remaining oo matches 1..5 run item modify entity @s weapon.mainhand oo:enchant/unbreaking
execute if score #offhand_remaining oo matches 1..5 run item modify entity @s weapon.offhand oo:enchant/unbreaking
execute if score #head_remaining oo matches 1..5 run item modify entity @s armor.head oo:enchant/unbreaking
execute if score #chest_remaining oo matches 1..5 run item modify entity @s armor.chest oo:enchant/unbreaking
execute if score #legs_remaining oo matches 1..5 run item modify entity @s armor.legs oo:enchant/unbreaking
execute if score #feet_remaining oo matches 1..5 run item modify entity @s armor.feet oo:enchant/unbreaking
# Do effect
execute if score #mainhand_remaining oo matches 1..5 run function oo:enchant/effect
execute if score #offhand_remaining oo matches 1..5 run function oo:enchant/effect
execute if score #head_remaining oo matches 1..5 run function oo:enchant/effect
execute if score #chest_remaining oo matches 1..5 run function oo:enchant/effect
execute if score #legs_remaining oo matches 1..5 run function oo:enchant/effect
execute if score #feet_remaining oo matches 1..5 run function oo:enchant/effect