scoreboard players add @s aj.twins_rubiel.animation.2_1_katana_guard.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.2_1_katana_guard.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/2_1_katana_guard/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.2_1_katana_guard.local_anim_time matches 15.. run function animated_java:twins_rubiel/zzzzzzzz/animations/2_1_katana_guard/end