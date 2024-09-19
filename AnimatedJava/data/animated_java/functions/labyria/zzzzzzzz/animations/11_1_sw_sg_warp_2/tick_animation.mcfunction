scoreboard players add @s aj.labyria.animation.11_1_sw_sg_warp_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.11_1_sw_sg_warp_2.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/11_1_sw_sg_warp_2/apply_frame_as_root
execute if score @s aj.labyria.animation.11_1_sw_sg_warp_2.local_anim_time matches 33.. run function animated_java:labyria/zzzzzzzz/animations/11_1_sw_sg_warp_2/end