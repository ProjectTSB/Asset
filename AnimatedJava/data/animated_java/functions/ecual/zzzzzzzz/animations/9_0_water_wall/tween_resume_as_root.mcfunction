function animated_java:ecual/zzzzzzzz/animations/9_0_water_wall/resume_as_root
function animated_java:ecual/zzzzzzzz/animations/9_0_water_wall/tween_as_root
function animated_java:ecual/zzzzzzzz/animations/9_0_water_wall/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i