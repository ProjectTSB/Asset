execute if entity @s[tag=aj.haruclaire_v3.root] run function animated_java:haruclaire_v3/zzzzzzzz/animations/6_0_rod_iceray/tween_resume_as_root
execute if entity @s[tag=!aj.haruclaire_v3.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:haruclaire_v3/animations/6_0_rod_iceray/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]