scoreboard players add @s aj.twins_sapphiel.animation.30_0_sync_goalong.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.30_0_sync_goalong.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/30_0_sync_goalong/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.30_0_sync_goalong.local_anim_time matches 40.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/30_0_sync_goalong/end