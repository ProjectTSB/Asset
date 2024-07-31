function animated_java:axia/zzzzzzzz/animations/6_0_moving_forward/play_as_root
function animated_java:axia/zzzzzzzz/animations/6_0_moving_forward/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i