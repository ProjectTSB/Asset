scoreboard players add @s aj.ecual.animation.11_1_damage_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.11_1_damage_2.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/11_1_damage_2/apply_frame_as_root
execute if score @s aj.ecual.animation.11_1_damage_2.local_anim_time matches 20.. run function animated_java:ecual/zzzzzzzz/animations/11_1_damage_2/end