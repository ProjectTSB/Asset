scoreboard players add @s aj.lexiel.animation.magic1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.lexiel.animation.magic1.local_anim_time
function animated_java:lexiel/zzzzzzzz/animations/magic1/apply_frame_as_root
execute if score @s aj.lexiel.animation.magic1.local_anim_time matches 40.. run function animated_java:lexiel/zzzzzzzz/animations/magic1/end