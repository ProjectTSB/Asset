scoreboard players add @s aj.twins_rubiel.animation.3_3_katana_vacu_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.3_3_katana_vacu_slash.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/3_3_katana_vacu_slash/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.3_3_katana_vacu_slash.local_anim_time matches 94.. run function animated_java:twins_rubiel/zzzzzzzz/animations/3_3_katana_vacu_slash/end