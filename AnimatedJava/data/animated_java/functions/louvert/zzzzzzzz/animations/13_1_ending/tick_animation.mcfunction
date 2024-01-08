scoreboard players add @s aj.louvert.animation.13_1_ending.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.13_1_ending.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/13_1_ending/apply_frame_as_root
execute if score @s aj.louvert.animation.13_1_ending.local_anim_time matches 110.. run function animated_java:louvert/zzzzzzzz/animations/13_1_ending/end