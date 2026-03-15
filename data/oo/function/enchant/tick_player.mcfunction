execute if items entity @s player.cursor *[lore=["Increased Potential"]] run function oo:enchant/player_increase
execute if items entity @s container.* *[lore=["Increased Potential"]] run function oo:enchant/player_increase

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
scoreboard players set #mainhand_remaining oo 0
scoreboard players set #offhand_remaining oo 0
scoreboard players set #head_remaining oo 0
scoreboard players set #chest_remaining oo 0
scoreboard players set #legs_remaining oo 0
scoreboard players set #feet_remaining oo 0

function oo:enchant/set_damage_head
function oo:enchant/set_damage_chest
function oo:enchant/set_damage_legs
function oo:enchant/set_damage_feet
function oo:enchant/set_damage_mainhand
function oo:enchant/set_damage_offhand

scoreboard players operation #mainhand_remaining oo -= #mainhand_damage oo
scoreboard players operation #offhand_remaining oo -= #offhand_damage oo
scoreboard players operation #head_remaining oo -= #head_damage oo
scoreboard players operation #chest_remaining oo -= #chest_damage oo
scoreboard players operation #legs_remaining oo -= #legs_damage oo
scoreboard players operation #feet_remaining oo -= #feet_damage oo
