scoreboard players add @s aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/7_3_katana_dashattack_to_cross/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross.local_anim_time matches 80.. run function animated_java:twins_rubiel/zzzzzzzz/animations/7_3_katana_dashattack_to_cross/end