execute if entity @s[tag=aj.lexiel.root] run function animated_java:lexiel/zzzzzzzz/animations/neutral/resume_as_root
execute if entity @s[tag=!aj.lexiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:lexiel/animations/neutral/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]