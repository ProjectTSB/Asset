scoreboard players add @s aj.twins_rubiel.animation.13_2_scythe_warp_2_upper.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.13_2_scythe_warp_2_upper.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/13_2_scythe_warp_2_upper/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.13_2_scythe_warp_2_upper.local_anim_time matches 18.. run function animated_java:twins_rubiel/zzzzzzzz/animations/13_2_scythe_warp_2_upper/end