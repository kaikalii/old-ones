# Spawn nodes
execute as @a run function oo:hitscan {f:"if block ~ ~ ~ #oo:copper_trapdoors if predicate oo:drainable_nearby align xyz positioned ~0.5 ~0.5 ~0.5 run return run function oo:drain/spawn_node"}
