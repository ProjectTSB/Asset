function animated_java:labyria/zzzzzzzz/animations/9_0_sw_nova_bomb/resume_as_root
function animated_java:labyria/zzzzzzzz/animations/9_0_sw_nova_bomb/tween_as_root
function animated_java:labyria/zzzzzzzz/animations/9_0_sw_nova_bomb/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i