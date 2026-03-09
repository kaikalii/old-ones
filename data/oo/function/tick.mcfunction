function oo:campfire/tick
function oo:fish/tick
function oo:throw/tick
function oo:nametag/tick
function oo:replace/tick

# Make spash bottle have water effect
execute as @e[type=splash_potion,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_name":"Splash Bottle"}}}] run data modify entity @s Item.components."minecraft:potion_contents" set value {potion:"water"}