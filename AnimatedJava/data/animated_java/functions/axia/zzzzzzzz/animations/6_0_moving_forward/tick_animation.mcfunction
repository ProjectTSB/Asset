scoreboard players add @s aj.axia.animation.6_0_moving_forward.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.6_0_moving_forward.local_anim_time
function animated_java:axia/zzzzzzzz/animations/6_0_moving_forward/apply_frame_as_root
execute if score @s aj.axia.animation.6_0_moving_forward.local_anim_time matches 35.. run function animated_java:axia/zzzzzzzz/animations/6_0_moving_forward/end