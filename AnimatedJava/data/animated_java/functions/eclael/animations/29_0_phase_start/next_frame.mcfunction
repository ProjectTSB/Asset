execute if entity @s[tag=aj.eclael.root] run function animated_java:eclael/zzzzzzzz/animations/29_0_phase_start/next_frame_as_root
execute if entity @s[tag=!aj.eclael.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:eclael/animations/29_0_phase_start/next_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]