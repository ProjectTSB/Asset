scoreboard players add @s aj.lexiel.animation.attack3_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.lexiel.animation.attack3_2.local_anim_time
function animated_java:lexiel/zzzzzzzz/animations/attack3_2/apply_frame_as_root
execute if score @s aj.lexiel.animation.attack3_2.local_anim_time matches 21.. run function animated_java:lexiel/zzzzzzzz/animations/attack3_2/end