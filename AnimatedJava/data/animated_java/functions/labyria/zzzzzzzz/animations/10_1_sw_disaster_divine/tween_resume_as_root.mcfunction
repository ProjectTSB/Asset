function animated_java:labyria/zzzzzzzz/animations/10_1_sw_disaster_divine/resume_as_root
function animated_java:labyria/zzzzzzzz/animations/10_1_sw_disaster_divine/tween_as_root
function animated_java:labyria/zzzzzzzz/animations/10_1_sw_disaster_divine/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i