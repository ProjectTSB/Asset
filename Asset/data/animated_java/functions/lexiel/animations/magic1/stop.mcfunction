execute if entity @s[tag=aj.lexiel.root] run function animated_java:lexiel/zzzzzzzz/animations/magic1/stop_as_root
execute if entity @s[tag=!aj.lexiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:lexiel/animations/magic1/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]