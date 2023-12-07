scoreboard players add @s aj.louvert.animation.03_4_fire_slash_slash_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.louvert.animation.03_4_fire_slash_slash_2.local_anim_time
function animated_java:louvert/zzzzzzzz/animations/03_4_fire_slash_slash_2/apply_frame_as_root
execute if score @s aj.louvert.animation.03_4_fire_slash_slash_2.local_anim_time matches 10.. run function animated_java:louvert/zzzzzzzz/animations/03_4_fire_slash_slash_2/end