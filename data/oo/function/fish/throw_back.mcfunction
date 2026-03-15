execute as @s[nbt={Item:{id:"minecraft:cod"}}] run summon cod ~ ~ ~
execute as @s[nbt={Item:{id:"minecraft:salmon"}}] run summon salmon ~ ~ ~
execute as @s[nbt={Item:{id:"minecraft:pufferfish"}}] run summon pufferfish ~ ~ ~
execute as @s[nbt={Item:{id:"minecraft:tropical_fish"}}] run summon tropical_fish ~ ~ ~

execute if function oo:random/3 run effect give @p luck 60 0 false
summon experience_orb ~ ~ ~ {Value:2}
advancement grant @p only oo:husbandry/throw_fish_back

kill @s