scoreboard players add @s aj.louvert.animation.06_2_moving.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.06_2_moving.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/06_2_moving/apply_frame_as_root
execute if score @s aj.louvert.animation.06_2_moving.local_anim_time matches 20.. run function animated_java:louvert/zzzzzzzz/animations/06_2_moving/end