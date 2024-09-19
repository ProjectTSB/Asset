scoreboard players add @s aj.labyria.animation.8_0_sw_raigou.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.8_0_sw_raigou.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/8_0_sw_raigou/apply_frame_as_root
execute if score @s aj.labyria.animation.8_0_sw_raigou.local_anim_time matches 80.. run function animated_java:labyria/zzzzzzzz/animations/8_0_sw_raigou/end