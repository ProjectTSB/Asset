execute if entity @s[tag=aj.haruclaire_v3.root] run function animated_java:haruclaire_v3/zzzzzzzz/animations/2_0_rod_icewall/apply_frame_as_root
execute if entity @s[tag=!aj.haruclaire_v3.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:haruclaire_v3/animations/2_0_rod_icewall/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]