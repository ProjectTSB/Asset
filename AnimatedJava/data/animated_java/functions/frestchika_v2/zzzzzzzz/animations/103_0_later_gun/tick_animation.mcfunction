scoreboard players add @s aj.frestchika_v2.animation.103_0_later_gun.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.103_0_later_gun.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/103_0_later_gun/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.103_0_later_gun.local_anim_time matches 30.. run function animated_java:frestchika_v2/zzzzzzzz/animations/103_0_later_gun/end