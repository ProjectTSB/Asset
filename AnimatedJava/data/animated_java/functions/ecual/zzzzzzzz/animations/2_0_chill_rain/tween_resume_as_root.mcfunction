function animated_java:ecual/zzzzzzzz/animations/2_0_chill_rain/resume_as_root
function animated_java:ecual/zzzzzzzz/animations/2_0_chill_rain/tween_as_root
function animated_java:ecual/zzzzzzzz/animations/2_0_chill_rain/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i