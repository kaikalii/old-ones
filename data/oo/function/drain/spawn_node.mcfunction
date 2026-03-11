execute as @e[type=marker,distance=..0.5,tag=drain_node] run return 0
summon marker ~ ~ ~ {Tags:["drain_node"]}