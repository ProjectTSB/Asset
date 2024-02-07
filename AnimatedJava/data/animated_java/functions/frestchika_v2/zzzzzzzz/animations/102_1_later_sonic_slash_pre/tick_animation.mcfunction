scoreboard players add @s aj.frestchika_v2.animation.102_1_later_sonic_slash_pre.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.102_1_later_sonic_slash_pre.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/102_1_later_sonic_slash_pre/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.102_1_later_sonic_slash_pre.local_anim_time matches 28.. run function animated_java:frestchika_v2/zzzzzzzz/animations/102_1_later_sonic_slash_pre/end