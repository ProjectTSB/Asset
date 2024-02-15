function animated_java:twins_rubiel/zzzzzzzz/animations/13_2_scythe_warp_2_upper/resume_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/13_2_scythe_warp_2_upper/tween_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/13_2_scythe_warp_2_upper/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i