execute unless block ~ ~ ~ #oo:copper_trapdoors run return run kill @s
execute unless predicate oo:drainable_nearby run return run kill @s

execute if block ~ ~ ~ #oo:copper_trapdoors[half=top,open=false] positioned ~ ~1 ~ run return run function oo:drain/drain
execute if block ~ ~ ~ #oo:copper_trapdoors[open=true,facing=east] positioned ~-1 ~ ~ run return run function oo:drain/drain
execute if block ~ ~ ~ #oo:copper_trapdoors[open=true,facing=west] positioned ~1 ~ ~ run return run function oo:drain/drain
execute if block ~ ~ ~ #oo:copper_trapdoors[open=true,facing=south] positioned ~ ~ ~-1 run return run function oo:drain/drain
execute if block ~ ~ ~ #oo:copper_trapdoors[open=true,facing=north] positioned ~ ~ ~1 run return run function oo:drain/drain
