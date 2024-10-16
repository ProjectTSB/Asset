function animated_java:tultaria/zzzzzzzz/animations/attack_magic_3_loop/resume_as_root
function animated_java:tultaria/zzzzzzzz/animations/attack_magic_3_loop/tween_as_root
function animated_java:tultaria/zzzzzzzz/animations/attack_magic_3_loop/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i