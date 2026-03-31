# This file is generated
execute unless items entity @s weapon.mainhand #pickaxes run return 0
execute if data entity @s SelectedItem.components."enchantments"."silk_touch" run return 0
execute if score #mainhand_potential oo < #mainhand_pot_req oo run return 0

scoreboard players set #fortune oo 0
execute store result score #fortune oo run data get entity @s SelectedItem.components."enchantments"."fortune"
execute if score #fortune oo matches 3.. run return 0

scoreboard players set #do_fortune oo 0

execute unless score @s oo.coal_ore = @s oo.last_coal_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_coal_ore = @s oo.coal_ore
execute unless score @s oo.copper_ore = @s oo.last_copper_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_copper_ore = @s oo.copper_ore
execute unless score @s oo.iron_ore = @s oo.last_iron_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_iron_ore = @s oo.iron_ore
execute unless score @s oo.gold_ore = @s oo.last_gold_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_gold_ore = @s oo.gold_ore
execute unless score @s oo.diamond_ore = @s oo.last_diamond_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_diamond_ore = @s oo.diamond_ore
execute unless score @s oo.redstone_ore = @s oo.last_redstone_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_redstone_ore = @s oo.redstone_ore
execute unless score @s oo.lapis_ore = @s oo.last_lapis_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_lapis_ore = @s oo.lapis_ore
execute unless score @s oo.emerald_ore = @s oo.last_emerald_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_emerald_ore = @s oo.emerald_ore
execute unless score @s oo.deepslate_coal_ore = @s oo.last_deepslate_coal_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_coal_ore = @s oo.deepslate_coal_ore
execute unless score @s oo.deepslate_copper_ore = @s oo.last_deepslate_copper_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_copper_ore = @s oo.deepslate_copper_ore
execute unless score @s oo.deepslate_iron_ore = @s oo.last_deepslate_iron_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_iron_ore = @s oo.deepslate_iron_ore
execute unless score @s oo.deepslate_gold_ore = @s oo.last_deepslate_gold_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_gold_ore = @s oo.deepslate_gold_ore
execute unless score @s oo.deepslate_diamond_ore = @s oo.last_deepslate_diamond_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_diamond_ore = @s oo.deepslate_diamond_ore
execute unless score @s oo.deepslate_redstone_ore = @s oo.last_deepslate_redstone_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_redstone_ore = @s oo.deepslate_redstone_ore
execute unless score @s oo.deepslate_lapis_ore = @s oo.last_deepslate_lapis_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_lapis_ore = @s oo.deepslate_lapis_ore
execute unless score @s oo.deepslate_emerald_ore = @s oo.last_deepslate_emerald_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_deepslate_emerald_ore = @s oo.deepslate_emerald_ore
execute unless score @s oo.nether_gold_ore = @s oo.last_nether_gold_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_nether_gold_ore = @s oo.nether_gold_ore
execute unless score @s oo.nether_quartz_ore = @s oo.last_nether_quartz_ore run scoreboard players set #do_fortune oo 1
scoreboard players operation @s oo.last_nether_quartz_ore = @s oo.nether_quartz_ore

execute store result score #rand oo run random value 1..60
execute if score #rand oo matches 1 if score #do_fortune oo matches 1 run function oo:enchant/with {slot:weapon.mainhand,ench:fortune}