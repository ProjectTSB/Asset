scoreboard players add @s aj.louvert.animation.07_1_soul_magic_cast.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.07_1_soul_magic_cast.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/07_1_soul_magic_cast/apply_frame_as_root
execute if score @s aj.louvert.animation.07_1_soul_magic_cast.local_anim_time matches 70.. run function animated_java:louvert/zzzzzzzz/animations/07_1_soul_magic_cast/end