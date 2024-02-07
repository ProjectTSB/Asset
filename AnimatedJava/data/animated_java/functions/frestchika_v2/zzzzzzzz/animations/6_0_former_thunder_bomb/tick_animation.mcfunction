scoreboard players add @s aj.frestchika_v2.animation.6_0_former_thunder_bomb.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.6_0_former_thunder_bomb.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/6_0_former_thunder_bomb/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.6_0_former_thunder_bomb.local_anim_time matches 35.. run function animated_java:frestchika_v2/zzzzzzzz/animations/6_0_former_thunder_bomb/end