# This file is generated
playsound block.composter.fill_success block @a
execute if block ~ ~ ~ composter[level=0] run return run setblock ~ ~ ~ composter[level=1]
execute if block ~ ~ ~ composter[level=1] run return run setblock ~ ~ ~ composter[level=2]
execute if block ~ ~ ~ composter[level=2] run return run setblock ~ ~ ~ composter[level=3]
execute if block ~ ~ ~ composter[level=3] run return run setblock ~ ~ ~ composter[level=4]
execute if block ~ ~ ~ composter[level=4] run return run setblock ~ ~ ~ composter[level=5]
execute if block ~ ~ ~ composter[level=5] run return run setblock ~ ~ ~ composter[level=6]
execute if block ~ ~ ~ composter[level=6] run return run setblock ~ ~ ~ composter[level=7]
execute if block ~ ~ ~ composter[level=7] run return run setblock ~ ~ ~ composter[level=8]
execute if block ~ ~ ~ composter[level=8] run summon item ~ ~ ~ {Item:{id:bone_meal,count:1}}
execute if block ~ ~ ~ composter[level=8] run return run setblock ~ ~ ~ composter[level=0]