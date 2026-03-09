# Teleport items to copper golems
execute as @e[type=copper_golem] unless items entity @s weapon.mainhand * at @s positioned ~ ~0.875 ~ as @n[type=item,distance=..1.9,nbt={PickupDelay:0s}] run tp ~ ~ ~

schedule function oo:copper_golem/update 2t