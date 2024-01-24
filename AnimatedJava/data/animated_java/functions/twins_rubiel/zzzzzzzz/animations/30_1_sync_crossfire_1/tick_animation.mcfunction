scoreboard players add @s aj.twins_rubiel.animation.30_1_sync_crossfire_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.30_1_sync_crossfire_1.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/30_1_sync_crossfire_1/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.30_1_sync_crossfire_1.local_anim_time matches 65.. run function animated_java:twins_rubiel/zzzzzzzz/animations/30_1_sync_crossfire_1/end