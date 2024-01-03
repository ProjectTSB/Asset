scoreboard players add @s aj.twins_rubiel.animation.6_2_katana_sheathe_cross.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.6_2_katana_sheathe_cross.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/6_2_katana_sheathe_cross/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.6_2_katana_sheathe_cross.local_anim_time matches 55.. run function animated_java:twins_rubiel/zzzzzzzz/animations/6_2_katana_sheathe_cross/end