execute if entity @s[tag=aj.frestchika_v2.root] run function animated_java:frestchika_v2/zzzzzzzz/animations/102_2_later_sonic_slash_tackle/pause_as_root
execute if entity @s[tag=!aj.frestchika_v2.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:frestchika_v2/animations/102_2_later_sonic_slash_tackle/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]