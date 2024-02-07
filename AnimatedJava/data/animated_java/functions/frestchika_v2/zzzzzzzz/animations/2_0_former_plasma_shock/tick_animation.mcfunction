scoreboard players add @s aj.frestchika_v2.animation.2_0_former_plasma_shock.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.2_0_former_plasma_shock.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/2_0_former_plasma_shock/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.2_0_former_plasma_shock.local_anim_time matches 38.. run function animated_java:frestchika_v2/zzzzzzzz/animations/2_0_former_plasma_shock/end