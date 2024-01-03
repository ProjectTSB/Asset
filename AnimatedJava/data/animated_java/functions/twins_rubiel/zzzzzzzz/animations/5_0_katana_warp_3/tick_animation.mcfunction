scoreboard players add @s aj.twins_rubiel.animation.5_0_katana_warp_3.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.5_0_katana_warp_3.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_3/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.5_0_katana_warp_3.local_anim_time matches 55.. run function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_3/end