execute if items entity @s weapon.mainhand #oo:enchant/sharpness run return run item modify entity @s weapon.mainhand oo:enchant/sharpness
execute if items entity @s weapon.mainhand bow run return run item modify entity @s weapon.mainhand oo:enchant/power
execute if items entity @s weapon.mainhand crossbow if function oo:random/2 run return run item modify entity @s weapon.mainhand oo:enchant/piercing
execute if items entity @s weapon.mainhand crossbow run return run item modify entity @s weapon.mainhand oo:enchant/quick_charge
execute if items entity @s weapon.mainhand trident run return run item modify entity @s weapon.mainhand oo:enchant/impaling
execute if items entity @s weapon.mainhand mace run return run item modify entity @s weapon.mainhand oo:enchant/density