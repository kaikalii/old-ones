$execute store result score #rand oo run random value 1..$(chance)
execute unless score #rand oo matches 1 run return fail

$execute if data entity @s equipment.$(slot).components."minecraft:enchantments"."oo:potential" run function oo:enchant/with {slot:armor.$(slot), ench:$(ench)}