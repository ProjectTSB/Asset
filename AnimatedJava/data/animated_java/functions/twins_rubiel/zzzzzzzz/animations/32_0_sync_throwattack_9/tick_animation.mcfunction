scoreboard players add @s aj.twins_rubiel.animation.32_0_sync_throwattack_9.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.32_0_sync_throwattack_9.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/32_0_sync_throwattack_9/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.32_0_sync_throwattack_9.local_anim_time matches 80.. run function animated_java:twins_rubiel/zzzzzzzz/animations/32_0_sync_throwattack_9/end