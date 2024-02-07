scoreboard players add @s aj.frestchika_v2.animation.0_1_former_idle_rare.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.0_1_former_idle_rare.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/0_1_former_idle_rare/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.0_1_former_idle_rare.local_anim_time matches 60.. run function animated_java:frestchika_v2/zzzzzzzz/animations/0_1_former_idle_rare/end