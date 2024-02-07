scoreboard players add @s aj.frestchika_v2.animation.3_1_former_sonic_slash_tackle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.3_1_former_sonic_slash_tackle.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/3_1_former_sonic_slash_tackle/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.3_1_former_sonic_slash_tackle.local_anim_time matches 4.. run function animated_java:frestchika_v2/zzzzzzzz/animations/3_1_former_sonic_slash_tackle/end