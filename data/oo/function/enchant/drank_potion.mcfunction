scoreboard players set @s oo.drink 0
execute store result score #levels oo run xp query @s levels
execute unless score #levels oo matches 3.. run return 0

xp add @s -3 levels
clear @s glass_bottle 1
give @s experience_bottle[item_name="Distilled Potential"]
playsound entity.experience_orb.pickup block @a ~ ~ ~ 0.3 0.5
advancement grant @s only oo:story/potential_potion