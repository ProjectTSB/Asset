scoreboard players add @s aj.lexiel.animation.rod.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.lexiel.animation.rod.local_anim_time
function animated_java:lexiel/zzzzzzzz/animations/rod/apply_frame_as_root
execute if score @s aj.lexiel.animation.rod.local_anim_time matches 84.. run function animated_java:lexiel/zzzzzzzz/animations/rod/end