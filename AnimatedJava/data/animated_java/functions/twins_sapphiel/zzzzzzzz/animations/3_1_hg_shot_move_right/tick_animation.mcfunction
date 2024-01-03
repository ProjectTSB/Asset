scoreboard players add @s aj.twins_sapphiel.animation.3_1_hg_shot_move_right.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.3_1_hg_shot_move_right.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/3_1_hg_shot_move_right/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.3_1_hg_shot_move_right.local_anim_time matches 63.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/3_1_hg_shot_move_right/end