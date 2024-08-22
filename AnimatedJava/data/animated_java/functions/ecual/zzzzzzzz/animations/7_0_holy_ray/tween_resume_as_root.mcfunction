function animated_java:ecual/zzzzzzzz/animations/7_0_holy_ray/resume_as_root
function animated_java:ecual/zzzzzzzz/animations/7_0_holy_ray/tween_as_root
function animated_java:ecual/zzzzzzzz/animations/7_0_holy_ray/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i