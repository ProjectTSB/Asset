scoreboard players add @s aj.labyria.animation.99_0_finish.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.99_0_finish.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/99_0_finish/apply_frame_as_root
execute if score @s aj.labyria.animation.99_0_finish.local_anim_time matches 105.. run function animated_java:labyria/zzzzzzzz/animations/99_0_finish/end