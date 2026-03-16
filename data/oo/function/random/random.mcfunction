$execute store result score #rand oo run random value 1..$(n)
execute if score #rand oo matches 2.. run return fail
return 1