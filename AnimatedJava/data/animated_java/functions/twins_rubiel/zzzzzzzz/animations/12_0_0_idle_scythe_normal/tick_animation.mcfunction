scoreboard players add @s aj.twins_rubiel.animation.12_0_0_idle_scythe_normal.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.12_0_0_idle_scythe_normal.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/12_0_0_idle_scythe_normal/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.12_0_0_idle_scythe_normal.local_anim_time matches 60.. run function animated_java:twins_rubiel/zzzzzzzz/animations/12_0_0_idle_scythe_normal/end