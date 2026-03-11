playsound block.composter.fill block @a
execute align xyz run particle composter ~0.5 ~1 ~0.5 0.3 0.3 0.3 0 1 normal @a

execute store result score #rand oo run random value 0..99
item modify entity @s contents {function:"set_count",count:-1,add:true}
execute if items entity @s contents #oo:compostable100 if score #rand oo matches ..100 run return run function oo:fill/increase
execute if items entity @s contents #oo:compostable85 if score #rand oo matches ..85 run return run function oo:fill/increase
execute if items entity @s contents #oo:compostable65 if score #rand oo matches ..65 run return run function oo:fill/increase
execute if items entity @s contents #oo:compostable50 if score #rand oo matches ..50 run return run function oo:fill/increase
execute if items entity @s contents #oo:compostable30 if score #rand oo matches ..30 run return run function oo:fill/increase