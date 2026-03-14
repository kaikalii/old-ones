# Replace the container in front of players that looted a chest the previous tick
execute as @a[tag=looting_now] at @s run function oo:replace/tick_looter

execute as @e[type=chest_minecart, tag=!replaced] unless data entity @s LootTable run function oo:replace/entity