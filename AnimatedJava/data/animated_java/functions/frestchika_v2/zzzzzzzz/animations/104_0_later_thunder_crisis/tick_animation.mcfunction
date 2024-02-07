scoreboard players add @s aj.frestchika_v2.animation.104_0_later_thunder_crisis.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.104_0_later_thunder_crisis.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/104_0_later_thunder_crisis/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.104_0_later_thunder_crisis.local_anim_time matches 55.. run function animated_java:frestchika_v2/zzzzzzzz/animations/104_0_later_thunder_crisis/end