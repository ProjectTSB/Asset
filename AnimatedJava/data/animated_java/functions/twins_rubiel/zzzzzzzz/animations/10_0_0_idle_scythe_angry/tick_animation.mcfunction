scoreboard players add @s aj.twins_rubiel.animation.10_0_0_idle_scythe_angry.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.twins_rubiel.animation.10_0_0_idle_scythe_angry.local_anim_time
function animated_java:twins_rubiel/zzzzzzzz/animations/10_0_0_idle_scythe_angry/apply_frame_as_root
execute if score @s aj.twins_rubiel.animation.10_0_0_idle_scythe_angry.local_anim_time matches 60.. run function animated_java:twins_rubiel/zzzzzzzz/animations/10_0_0_idle_scythe_angry/end