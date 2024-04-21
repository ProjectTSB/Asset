function animated_java:haruclaire_v3/zzzzzzzz/animations/4_0_rod_icefang/resume_as_root
function animated_java:haruclaire_v3/zzzzzzzz/animations/4_0_rod_icefang/tween_as_root
function animated_java:haruclaire_v3/zzzzzzzz/animations/4_0_rod_icefang/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i