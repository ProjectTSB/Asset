execute if entity @s[tag=aj.twins_rubiel.root] run function animated_java:twins_rubiel/zzzzzzzz/animations/6_4_katana_sheathe_damage/tween_resume_as_root
execute if entity @s[tag=!aj.twins_rubiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:twins_rubiel/animations/6_4_katana_sheathe_damage/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]