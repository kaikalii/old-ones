scoreboard players set #named_tag oo 0
function oo:hitscan {f:"if block ~ ~ ~ #all_signs run return run function oo:nametag/get_name"}
execute if score #named_tag oo matches 0 run function oo:nametag/use_hand {tag_hand_path:SelectedItem,equipment_hand_path:equipment.offhand,tag_hand:mainhand,equipment_hand:offhand}