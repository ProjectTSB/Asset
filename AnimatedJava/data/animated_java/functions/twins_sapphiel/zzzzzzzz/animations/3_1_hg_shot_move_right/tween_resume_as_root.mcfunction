function animated_java:twins_sapphiel/zzzzzzzz/animations/3_1_hg_shot_move_right/resume_as_root
function animated_java:twins_sapphiel/zzzzzzzz/animations/3_1_hg_shot_move_right/tween_as_root
function animated_java:twins_sapphiel/zzzzzzzz/animations/3_1_hg_shot_move_right/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i