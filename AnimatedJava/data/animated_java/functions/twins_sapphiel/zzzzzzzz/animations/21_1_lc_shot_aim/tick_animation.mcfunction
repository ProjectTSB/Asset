scoreboard players add @s aj.twins_sapphiel.animation.21_1_lc_shot_aim.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.21_1_lc_shot_aim.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/21_1_lc_shot_aim/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.21_1_lc_shot_aim.local_anim_time matches 50.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/21_1_lc_shot_aim/end