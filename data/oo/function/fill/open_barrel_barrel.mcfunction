execute unless block ~ ~ ~ barrel run return 0
execute if block ~ ~1 ~ lever[face=floor,powered=false] unless block ~ ~ ~ barrel[facing=up] run return run function oo:fill/set_barrel_closed
execute if block ~ ~1 ~ lever[face=floor,powered=true] unless block ~ ~ ~ barrel[facing=up] run return run function oo:fill/set_barrel_open
execute if block ~ ~-1 ~ lever[face=ceiling,powered=false] unless block ~ ~ ~ barrel[facing=down] run return run function oo:fill/set_barrel_closed
execute if block ~ ~-1 ~ lever[face=ceiling,powered=true] unless block ~ ~ ~ barrel[facing=down] run return run function oo:fill/set_barrel_open
execute if block ~1 ~ ~ lever[face=wall,facing=east,powered=false] unless block ~ ~ ~ barrel[facing=east] run return run function oo:fill/set_barrel_closed
execute if block ~1 ~ ~ lever[face=wall,facing=east,powered=true] unless block ~ ~ ~ barrel[facing=east] run return run function oo:fill/set_barrel_open
execute if block ~-1 ~ ~ lever[face=wall,facing=west,powered=false] unless block ~ ~ ~ barrel[facing=west] run return run function oo:fill/set_barrel_closed
execute if block ~-1 ~ ~ lever[face=wall,facing=west,powered=true] unless block ~ ~ ~ barrel[facing=west] run return run function oo:fill/set_barrel_open
execute if block ~ ~ ~1 lever[face=wall,facing=south,powered=false] unless block ~ ~ ~ barrel[facing=south] run return run function oo:fill/set_barrel_closed
execute if block ~ ~ ~1 lever[face=wall,facing=south,powered=true] unless block ~ ~ ~ barrel[facing=south] run return run function oo:fill/set_barrel_open
execute if block ~ ~ ~-1 lever[face=wall,facing=north,powered=false] unless block ~ ~ ~ barrel[facing=north] run return run function oo:fill/set_barrel_closed
execute if block ~ ~ ~-1 lever[face=wall,facing=north,powered=true] unless block ~ ~ ~ barrel[facing=north] run return run function oo:fill/set_barrel_open