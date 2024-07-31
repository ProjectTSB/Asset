function animated_java:axia/zzzzzzzz/animations/6_1_moving_back/resume_as_root
function animated_java:axia/zzzzzzzz/animations/6_1_moving_back/tween_as_root
function animated_java:axia/zzzzzzzz/animations/6_1_moving_back/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i