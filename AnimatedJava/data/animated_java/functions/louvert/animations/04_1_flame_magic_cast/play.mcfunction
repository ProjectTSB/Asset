execute if entity @s[tag=aj.louvert.root] run function animated_java:louvert/zzzzzzzz/animations/04_1_flame_magic_cast/play_as_root
execute if entity @s[tag=!aj.louvert.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:louvert/animations/04_1_flame_magic_cast/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]