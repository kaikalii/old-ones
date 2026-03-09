$item modify entity @s weapon.mainhand {function:"set_components",components:{"minecraft:custom_name":"$(name)"}}
setblock ~ ~ ~ air destroy
playsound ui.cartography_table.take_result block