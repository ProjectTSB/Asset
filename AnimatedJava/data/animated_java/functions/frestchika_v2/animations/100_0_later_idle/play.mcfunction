execute if entity @s[tag=aj.frestchika_v2.root] run function animated_java:frestchika_v2/zzzzzzzz/animations/100_0_later_idle/play_as_root
execute if entity @s[tag=!aj.frestchika_v2.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:frestchika_v2/animations/100_0_later_idle/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]