scoreboard players add @s aj.twins_rubiel.animation.6_4_katana_sheathe_damage.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.6_4_katana_sheathe_damage.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/6_4_katana_sheathe_damage/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.6_4_katana_sheathe_damage.local_anim_time matches 56.. run function animated_java:twins_rubiel/zzzzzzzz/animations/6_4_katana_sheathe_damage/end