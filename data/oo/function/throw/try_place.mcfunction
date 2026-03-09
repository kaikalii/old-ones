# Place item as block
execute as @s[nbt={OnGround:true}] if items entity @s contents #oo:throw_place if block ~ ~ ~ air unless block ~ ~-1 ~ #oo:transparent run function oo:throw/place with entity @s Item

# Summon item as entity
execute if items entity @s contents #oo:throw_summon if block ~ ~ ~ #oo:summon_in unless block ~ ~-0.1 ~ #oo:transparent_non_fluid run function oo:throw/summon with entity @s Item