function animated_java:ecual/zzzzzzzz/animations/5_1_water_bullet/resume_as_root
function animated_java:ecual/zzzzzzzz/animations/5_1_water_bullet/tween_as_root
function animated_java:ecual/zzzzzzzz/animations/5_1_water_bullet/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i