function animated_java:lexiel/zzzzzzzz/animations/rod/resume_as_root
function animated_java:lexiel/zzzzzzzz/animations/rod/tween_as_root
function animated_java:lexiel/zzzzzzzz/animations/rod/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i