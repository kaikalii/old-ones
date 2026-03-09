# When the player generates a loot table, tag them.
# The loot isn't actually generated until the next tick.
advancement revoke @s from oo:loot/all
tag @s add looting_now