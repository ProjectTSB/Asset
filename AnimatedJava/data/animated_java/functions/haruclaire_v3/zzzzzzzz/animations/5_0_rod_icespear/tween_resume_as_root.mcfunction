function animated_java:haruclaire_v3/zzzzzzzz/animations/5_0_rod_icespear/resume_as_root
function animated_java:haruclaire_v3/zzzzzzzz/animations/5_0_rod_icespear/tween_as_root
function animated_java:haruclaire_v3/zzzzzzzz/animations/5_0_rod_icespear/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i