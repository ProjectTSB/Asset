function animated_java:twins_rubiel/zzzzzzzz/animations/7_2_katana_horizon_w/resume_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/7_2_katana_horizon_w/tween_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/7_2_katana_horizon_w/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i