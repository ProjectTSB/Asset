execute if entity @s[tag=aj.eclael.root] run function animated_java:eclael/zzzzzzzz/animations/24_0_latter_attack_spear/play_as_root
execute if entity @s[tag=!aj.eclael.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:eclael/animations/24_0_latter_attack_spear/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]