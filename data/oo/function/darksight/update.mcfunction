execute as @a[nbt={equipment:{head:{components:{"minecraft:enchantments":{"oo:darksight":1}}}}}] at @s if dimension overworld align xyz positioned ~0.5 ~ ~0.5 run function oo:darksight/show_darkness

schedule function oo:darksight/update 4t