scoreboard players add @s aj.ecual.animation.12_0_opening_attack.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.12_0_opening_attack.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/12_0_opening_attack/apply_frame_as_root
execute if score @s aj.ecual.animation.12_0_opening_attack.local_anim_time matches 275.. run function animated_java:ecual/zzzzzzzz/animations/12_0_opening_attack/end