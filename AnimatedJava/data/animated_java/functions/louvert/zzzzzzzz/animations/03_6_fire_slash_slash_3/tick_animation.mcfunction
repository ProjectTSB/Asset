scoreboard players add @s aj.louvert.animation.03_6_fire_slash_slash_3.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.03_6_fire_slash_slash_3.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/03_6_fire_slash_slash_3/apply_frame_as_root
execute if score @s aj.louvert.animation.03_6_fire_slash_slash_3.local_anim_time matches 13.. run function animated_java:louvert/zzzzzzzz/animations/03_6_fire_slash_slash_3/end