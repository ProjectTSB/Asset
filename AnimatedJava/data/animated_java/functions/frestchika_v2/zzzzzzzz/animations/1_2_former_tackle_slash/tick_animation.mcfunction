scoreboard players add @s aj.frestchika_v2.animation.1_2_former_tackle_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.1_2_former_tackle_slash.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/1_2_former_tackle_slash/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.1_2_former_tackle_slash.local_anim_time matches 34.. run function animated_java:frestchika_v2/zzzzzzzz/animations/1_2_former_tackle_slash/end