execute if entity @s[tag=aj.tultaria.root] run function animated_java:tultaria/zzzzzzzz/animations/attack_magic_2_left/tween_resume_as_root
execute if entity @s[tag=!aj.tultaria.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:tultaria/animations/attack_magic_2_left/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]