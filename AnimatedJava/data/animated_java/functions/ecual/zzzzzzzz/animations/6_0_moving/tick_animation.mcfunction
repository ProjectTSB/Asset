scoreboard players add @s aj.ecual.animation.6_0_moving.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.6_0_moving.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/6_0_moving/apply_frame_as_root
execute if score @s aj.ecual.animation.6_0_moving.local_anim_time matches 55.. run function animated_java:ecual/zzzzzzzz/animations/6_0_moving/end