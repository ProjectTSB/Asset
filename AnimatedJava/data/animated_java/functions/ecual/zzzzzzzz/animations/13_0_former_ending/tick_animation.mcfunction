scoreboard players add @s aj.ecual.animation.13_0_former_ending.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.13_0_former_ending.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/13_0_former_ending/apply_frame_as_root
execute if score @s aj.ecual.animation.13_0_former_ending.local_anim_time matches 100.. run function animated_java:ecual/zzzzzzzz/animations/13_0_former_ending/end