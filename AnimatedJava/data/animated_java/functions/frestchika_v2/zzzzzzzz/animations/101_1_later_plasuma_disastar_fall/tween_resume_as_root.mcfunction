function animated_java:frestchika_v2/zzzzzzzz/animations/101_1_later_plasuma_disastar_fall/resume_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/101_1_later_plasuma_disastar_fall/tween_as_root
function animated_java:frestchika_v2/zzzzzzzz/animations/101_1_later_plasuma_disastar_fall/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i