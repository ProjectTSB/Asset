function animated_java:frestchika_v2/zzzzzzzz/animations/101_2_later_plasuma_disastar_normal/resume_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/101_2_later_plasuma_disastar_normal/tween_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/101_2_later_plasuma_disastar_normal/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i