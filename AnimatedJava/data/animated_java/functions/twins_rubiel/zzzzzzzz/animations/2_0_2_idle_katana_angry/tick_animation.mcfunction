scoreboard players add @s aj.twins_rubiel.animation.2_0_2_idle_katana_angry.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.2_0_2_idle_katana_angry.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_2_idle_katana_angry/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.2_0_2_idle_katana_angry.local_anim_time matches 60.. run function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_2_idle_katana_angry/end