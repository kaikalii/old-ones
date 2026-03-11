# Add the whole stack
$loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:"$(id)",functions:[{function:set_count,count:$(count)}, {function:set_components,components:$(components)}]}]}]}
# Destroy the entity
kill @s
# Give advancement
execute if items block ~ ~ ~ container.* #oo:props_open_barrel run advancement grant @p only oo:adventure/fill_barrel