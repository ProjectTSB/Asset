function animated_java:haruclaire_v3/zzzzzzzz/animations/3_0_rod_icebullet/resume_as_root
function animated_java:haruclaire_v3/zzzzzzzz/animations/3_0_rod_icebullet/tween_as_root
function animated_java:haruclaire_v3/zzzzzzzz/animations/3_0_rod_icebullet/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i