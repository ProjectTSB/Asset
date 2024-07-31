scoreboard players add @s aj.axia.animation.7_0_moving_iai.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.axia.animation.7_0_moving_iai.local_anim_time
function animated_java:axia/zzzzzzzz/animations/7_0_moving_iai/apply_frame_as_root
execute if score @s aj.axia.animation.7_0_moving_iai.local_anim_time matches 65.. run function animated_java:axia/zzzzzzzz/animations/7_0_moving_iai/end