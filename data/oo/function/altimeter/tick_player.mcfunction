execute if biome ~ ~ ~ #oo:is_shallow_water run return run function oo:altimeter/tick_shallow_water
execute if biome ~ ~ ~ #is_deep_ocean run return run function oo:altimeter/tick_deep_ocean
execute if biome ~ ~ ~ #is_beach run return run function oo:altimeter/tick_beach
execute if biome ~ ~ ~ the_end run return run function oo:altimeter/tick_the_end
execute if dimension overworld run return run function oo:altimeter/tick_land
execute if dimension the_nether run return run function oo:altimeter/tick_nether
execute if dimension the_end run return run function oo:altimeter/tick_end