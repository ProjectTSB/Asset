scoreboard players add @s aj.labyria.animation.16_0_invisible.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.16_0_invisible.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/16_0_invisible/apply_frame_as_root
execute if score @s aj.labyria.animation.16_0_invisible.local_anim_time matches 1.. run function animated_java:labyria/zzzzzzzz/animations/16_0_invisible/end