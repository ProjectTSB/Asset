execute if entity @s[tag=aj.twins_sapphiel.root] run function animated_java:twins_sapphiel/zzzzzzzz/animations/launcher/play_as_root
execute if entity @s[tag=!aj.twins_sapphiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:twins_sapphiel/animations/launcher/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]