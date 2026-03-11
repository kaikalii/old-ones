# Tick node
execute as @e[type=marker,tag=drain_node] at @s run function oo:drain/update_node
schedule function oo:drain/update 1s
