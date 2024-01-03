scoreboard players add @s aj.twins_rubiel.animation.8_1_katana_throw_failed.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.8_1_katana_throw_failed.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/8_1_katana_throw_failed/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.8_1_katana_throw_failed.local_anim_time matches 47.. run function animated_java:twins_rubiel/zzzzzzzz/animations/8_1_katana_throw_failed/end