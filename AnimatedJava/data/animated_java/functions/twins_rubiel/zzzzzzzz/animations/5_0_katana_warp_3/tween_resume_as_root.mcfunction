function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_3/resume_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_3/tween_as_root
function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_3/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i