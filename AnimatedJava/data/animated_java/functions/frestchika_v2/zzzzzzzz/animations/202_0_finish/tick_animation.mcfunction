scoreboard players add @s aj.frestchika_v2.animation.202_0_finish.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.202_0_finish.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/202_0_finish/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.202_0_finish.local_anim_time matches 45.. run function animated_java:frestchika_v2/zzzzzzzz/animations/202_0_finish/end