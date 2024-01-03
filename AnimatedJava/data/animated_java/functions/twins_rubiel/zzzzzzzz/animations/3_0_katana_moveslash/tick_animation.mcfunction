scoreboard players add @s aj.twins_rubiel.animation.3_0_katana_moveslash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.3_0_katana_moveslash.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/3_0_katana_moveslash/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.3_0_katana_moveslash.local_anim_time matches 29.. run function animated_java:twins_rubiel/zzzzzzzz/animations/3_0_katana_moveslash/end