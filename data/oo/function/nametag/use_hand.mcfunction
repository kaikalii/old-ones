$data modify storage oo:macro nametag.name set from entity @s $(tag_hand_path).components.minecraft:custom_name
$data modify storage oo:macro nametag merge value {equipment_hand_path:$(equipment_hand_path),tag_hand:$(tag_hand),equipment_hand:$(equipment_hand)}
function oo:nametag/name_hand with storage oo:macro nametag