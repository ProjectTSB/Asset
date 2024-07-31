function animated_java:axia/zzzzzzzz/animations/7_0_moving_iai/resume_as_root
function animated_java:axia/zzzzzzzz/animations/7_0_moving_iai/tween_as_root
function animated_java:axia/zzzzzzzz/animations/7_0_moving_iai/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i