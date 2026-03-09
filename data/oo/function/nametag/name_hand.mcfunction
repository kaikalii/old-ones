$execute store success score #temp oo run data get entity @s $(equipment_hand_path)
execute if score #temp oo matches 0 run return 0
$item modify entity @s weapon.$(equipment_hand) {function:"set_components",components:{"minecraft:custom_name":"$(name)","minecraft:enchantment_glint_override":1b}}
$item modify entity @s weapon.$(tag_hand) {function:"set_count",count:0}
playsound ui.cartography_table.take_result block
