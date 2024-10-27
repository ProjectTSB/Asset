scoreboard players add @s aj.labyria.animation.15_0_sw_stan.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.15_0_sw_stan.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/15_0_sw_stan/apply_frame_as_root
execute if score @s aj.labyria.animation.15_0_sw_stan.local_anim_time matches 140.. run function animated_java:labyria/zzzzzzzz/animations/15_0_sw_stan/end