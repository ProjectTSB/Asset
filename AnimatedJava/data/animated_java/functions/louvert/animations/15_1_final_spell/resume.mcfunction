execute if entity @s[tag=aj.louvert.root] run function animated_java:louvert/zzzzzzzz/animations/15_1_final_spell/resume_as_root
execute if entity @s[tag=!aj.louvert.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:louvert/animations/15_1_final_spell/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]