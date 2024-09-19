scoreboard players add @s aj.labyria.animation.2_1_ms_move_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.2_1_ms_move_start.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/2_1_ms_move_start/apply_frame_as_root
execute if score @s aj.labyria.animation.2_1_ms_move_start.local_anim_time matches 25.. run function animated_java:labyria/zzzzzzzz/animations/2_1_ms_move_start/end