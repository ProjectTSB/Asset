execute if entity @s[tag=aj.tultaria.root] run function animated_java:tultaria/zzzzzzzz/animations/deadly_rod_spin/next_frame_as_root
execute if entity @s[tag=!aj.tultaria.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:tultaria/animations/deadly_rod_spin/next_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]