execute if entity @s[tag=aj.twins_sapphiel.root] run function animated_java:twins_sapphiel/zzzzzzzz/animations/0_0_start/pause_as_root
execute if entity @s[tag=!aj.twins_sapphiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:twins_sapphiel/animations/0_0_start/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]