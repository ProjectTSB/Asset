execute if entity @s[tag=aj.twins_rubiel.root] run function animated_java:twins_rubiel/zzzzzzzz/animations/13_3_scythe_warp_3_throw/play_as_root
execute if entity @s[tag=!aj.twins_rubiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:twins_rubiel/animations/13_3_scythe_warp_3_throw/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]