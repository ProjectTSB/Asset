scoreboard players add @s aj.ecual.animation.8_0_quietus_rain.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ecual.animation.8_0_quietus_rain.local_anim_time
function animated_java:ecual/zzzzzzzz/animations/8_0_quietus_rain/apply_frame_as_root
execute if score @s aj.ecual.animation.8_0_quietus_rain.local_anim_time matches 150.. run function animated_java:ecual/zzzzzzzz/animations/8_0_quietus_rain/end