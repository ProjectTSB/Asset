scoreboard players add @s aj.labyria.animation.3_1_ms_warp_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.3_1_ms_warp_2.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/3_1_ms_warp_2/apply_frame_as_root
execute if score @s aj.labyria.animation.3_1_ms_warp_2.local_anim_time matches 30.. run function animated_java:labyria/zzzzzzzz/animations/3_1_ms_warp_2/end