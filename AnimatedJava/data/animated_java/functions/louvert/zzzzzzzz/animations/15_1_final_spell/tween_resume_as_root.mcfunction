function animated_java:louvert/zzzzzzzz/animations/15_1_final_spell/resume_as_root
function animated_java:louvert/zzzzzzzz/animations/15_1_final_spell/tween_as_root
function animated_java:louvert/zzzzzzzz/animations/15_1_final_spell/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i