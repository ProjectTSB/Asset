scoreboard players add @s aj.twins_sapphiel.animation.32_0_sync_throwattack_0.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_sapphiel.animation.32_0_sync_throwattack_0.local_anim_time
function animated_java:twins_sapphiel/zzzzzzzz/animations/32_0_sync_throwattack_0/apply_frame_as_root
execute if score @s aj.twins_sapphiel.animation.32_0_sync_throwattack_0.local_anim_time matches 85.. run function animated_java:twins_sapphiel/zzzzzzzz/animations/32_0_sync_throwattack_0/end