function animated_java:twins_rubiel/zzzzzzzz/animations/8_0_katana_throw_start_normal/resume_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/8_0_katana_throw_start_normal/tween_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/8_0_katana_throw_start_normal/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i