execute if entity @s[tag=aj.louvert.root] run function animated_java:louvert/zzzzzzzz/animations/11_1_cast_magic/resume_as_root
execute if entity @s[tag=!aj.louvert.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:louvert/animations/11_1_cast_magic/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]