$execute store result score #temp oo store success score #success oo run data get entity @s $(path).components."minecraft:custom_data".Alive
execute if score #success oo matches 0 run return 0
scoreboard players remove #temp oo 1
execute if score #temp oo matches ..0 run scoreboard players set #temp oo 0
$data modify storage oo:macro slot set value $(slot)
execute store result storage oo:macro Alive int 1 run scoreboard players get #temp oo
function oo:fish/tick_inv2 with storage oo:macro

$execute if score #temp oo matches 0 run item modify entity @s $(slot) {function:"set_components", components:{lore:["Dead"], enchantment_glint_override:false}}
$execute if score #temp oo matches 1.. run item modify entity @s $(slot) {function:"set_components", components:{lore:["Alive"], enchantment_glint_override:true}}