scoreboard players add @s aj.frestchika_v2.animation.199_0_later_overheat.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.199_0_later_overheat.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/199_0_later_overheat/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.199_0_later_overheat.local_anim_time matches 30.. run function animated_java:frestchika_v2/zzzzzzzz/animations/199_0_later_overheat/end