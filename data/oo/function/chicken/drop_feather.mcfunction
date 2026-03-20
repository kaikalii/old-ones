# Must be adult
execute store result score #temp oo run data get entity @s Age
execute unless score #temp oo matches 0.. run return 0

# Random chance
execute store result score #temp oo run random value 0..30000
execute unless score #temp oo matches 0 run return 0

# Summon feather
summon item ~ ~ ~ {Item:{id:"feather",count:1}}
