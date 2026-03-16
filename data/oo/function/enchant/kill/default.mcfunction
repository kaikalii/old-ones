execute if items entity @s weapon.mainhand #oo:enchant/sharpness run return run function oo:enchant/with {slot:weapon.mainhand, ench:sharpness}
execute if items entity @s weapon.mainhand bow run return run function oo:enchant/with {slot:weapon.mainhand, ench:power}
execute if items entity @s weapon.mainhand crossbow if function oo:random/2 run return run function oo:enchant/with {slot:weapon.mainhand, ench:piercing}
execute if items entity @s weapon.mainhand crossbow run return run function oo:enchant/with {slot:weapon.mainhand, ench:quick_charge}
execute if items entity @s weapon.mainhand trident run return run function oo:enchant/with {slot:weapon.mainhand, ench:impaling}
execute if items entity @s weapon.mainhand mace run return run function oo:enchant/with {slot:weapon.mainhand, ench:density}