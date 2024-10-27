scoreboard players add @s aj.axia.animation.2_0_normal_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.2_0_normal_slash.local_anim_time
function animated_java:axia/zzzzzzzz/animations/2_0_normal_slash/apply_frame_as_root
execute if score @s aj.axia.animation.2_0_normal_slash.local_anim_time matches 38.. run function animated_java:axia/zzzzzzzz/animations/2_0_normal_slash/end