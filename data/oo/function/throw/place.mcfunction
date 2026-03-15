execute as @s[type=item,nbt={Item:{id:"minecraft:torch"}}] if predicate oo:dark as @p[distance=4..] run advancement grant @s only oo:adventure/throw_torch
$setblock ~ ~ ~ $(id)
kill @s