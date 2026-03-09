advancement revoke @s only oo:use/nametag
execute if entity @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] run function oo:nametag/use_mainhand
execute if entity @s[nbt={equipment:{offhand:{id:"minecraft:name_tag"}}}] run function oo:nametag/use_offhand
