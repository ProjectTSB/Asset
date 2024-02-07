scoreboard players add @s aj.frestchika_v2.animation.102_0_later_sonic_slash_funnel.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.102_0_later_sonic_slash_funnel.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/102_0_later_sonic_slash_funnel/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.102_0_later_sonic_slash_funnel.local_anim_time matches 25.. run function animated_java:frestchika_v2/zzzzzzzz/animations/102_0_later_sonic_slash_funnel/end