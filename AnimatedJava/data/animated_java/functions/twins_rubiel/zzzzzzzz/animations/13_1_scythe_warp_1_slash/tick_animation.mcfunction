scoreboard players add @s aj.twins_rubiel.animation.13_1_scythe_warp_1_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.13_1_scythe_warp_1_slash.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/13_1_scythe_warp_1_slash/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.13_1_scythe_warp_1_slash.local_anim_time matches 14.. run function animated_java:twins_rubiel/zzzzzzzz/animations/13_1_scythe_warp_1_slash/end