function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_2_idle_katana_angry/resume_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_2_idle_katana_angry/tween_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_2_idle_katana_angry/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i