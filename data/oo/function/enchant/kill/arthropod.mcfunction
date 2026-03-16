advancement revoke @s only oo:killed_arthropod
execute unless function oo:enchant/kill/allowed run return 0

execute if function oo:random/2 if items entity @s weapon.mainhand #oo:enchant/sharpness run return run function oo:enchant/with {slot:weapon.mainhand, ench:bane_of_arthropods}

function oo:enchant/kill/default