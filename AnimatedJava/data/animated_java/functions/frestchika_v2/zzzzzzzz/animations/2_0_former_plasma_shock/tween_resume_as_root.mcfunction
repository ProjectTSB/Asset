function animated_java:frestchika_v2/zzzzzzzz/animations/2_0_former_plasma_shock/resume_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/2_0_former_plasma_shock/tween_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/2_0_former_plasma_shock/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i