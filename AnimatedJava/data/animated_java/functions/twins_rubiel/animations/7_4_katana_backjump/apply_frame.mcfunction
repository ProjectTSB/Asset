execute if entity @s[tag=aj.twins_rubiel.root] run function animated_java:twins_rubiel/zzzzzzzz/animations/7_4_katana_backjump/apply_frame_as_root
execute if entity @s[tag=!aj.twins_rubiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:twins_rubiel/animations/7_4_katana_backjump/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]