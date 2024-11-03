scoreboard players add @s aj.lexiel.animation.magic3.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.lexiel.animation.magic3.local_anim_time
function animated_java:lexiel/zzzzzzzz/animations/magic3/apply_frame_as_root
execute if score @s aj.lexiel.animation.magic3.local_anim_time matches 84.. run function animated_java:lexiel/zzzzzzzz/animations/magic3/end