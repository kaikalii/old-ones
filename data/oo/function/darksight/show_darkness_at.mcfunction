execute store result score #temp oo run random value 0..1
execute if function oo:random/2 run return 0
execute unless block ~ ~ ~ air run return 0
execute if block ~ ~-1 ~ #oo:prevents_spawns run return 0
execute if block ~ ~-1 ~ #slabs[type=bottom] run return 0
execute if block ~ ~-1 ~ #stairs[half=bottom] run return 0
execute if predicate oo:dark_inside run return run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.1 0 0.1 0 1 normal @s
execute if predicate oo:dark_outside run particle dust{color:[0,0,0.3],scale:1} ~ ~ ~ 0.1 0 0.1 0 1 normal @s
