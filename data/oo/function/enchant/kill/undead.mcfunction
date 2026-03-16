advancement revoke @s only oo:killed_undead
execute unless function oo:enchant/kill/allowed run return 0

execute if function oo:random/2 if items entity @s weapon.mainhand #oo:enchant/sharpness run return run item modify entity @s weapon.mainhand oo:enchant/smite

function oo:enchant/kill/default