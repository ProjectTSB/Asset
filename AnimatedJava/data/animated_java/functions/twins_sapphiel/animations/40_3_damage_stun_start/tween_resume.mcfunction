execute if entity @s[tag=aj.twins_sapphiel.root] run function animated_java:twins_sapphiel/zzzzzzzz/animations/40_3_damage_stun_start/tween_resume_as_root
execute if entity @s[tag=!aj.twins_sapphiel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:twins_sapphiel/animations/40_3_damage_stun_start/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]