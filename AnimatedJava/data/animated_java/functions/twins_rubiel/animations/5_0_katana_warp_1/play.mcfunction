execute if entity @s[tag=aj.twins_rubiel.root] run function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_1/play_as_root
execute if entity @s[tag=!aj.twins_rubiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:twins_rubiel/animations/5_0_katana_warp_1/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]