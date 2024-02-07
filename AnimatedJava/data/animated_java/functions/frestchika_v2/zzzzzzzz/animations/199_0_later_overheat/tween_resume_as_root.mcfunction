function animated_java:frestchika_v2/zzzzzzzz/animations/199_0_later_overheat/resume_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/199_0_later_overheat/tween_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/199_0_later_overheat/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i