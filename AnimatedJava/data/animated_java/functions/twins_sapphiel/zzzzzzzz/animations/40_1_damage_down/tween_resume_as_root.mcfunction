function animated_java:twins_sapphiel/zzzzzzzz/animations/40_1_damage_down/resume_as_root
function animated_java:twins_sapphiel/zzzzzzzz/animations/40_1_damage_down/tween_as_root
function animated_java:twins_sapphiel/zzzzzzzz/animations/40_1_damage_down/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i