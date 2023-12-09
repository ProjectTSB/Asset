scoreboard players add @s aj.louvert.animation.03_2_fire_slash_slash_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.03_2_fire_slash_slash_1.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/03_2_fire_slash_slash_1/apply_frame_as_root
execute if score @s aj.louvert.animation.03_2_fire_slash_slash_1.local_anim_time matches 20.. run function animated_java:louvert/zzzzzzzz/animations/03_2_fire_slash_slash_1/end