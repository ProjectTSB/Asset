scoreboard players add @s aj.labyria.animation.13_0_ms_hexa_laser.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.13_0_ms_hexa_laser.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/13_0_ms_hexa_laser/apply_frame_as_root
execute if score @s aj.labyria.animation.13_0_ms_hexa_laser.local_anim_time matches 75.. run function animated_java:labyria/zzzzzzzz/animations/13_0_ms_hexa_laser/end