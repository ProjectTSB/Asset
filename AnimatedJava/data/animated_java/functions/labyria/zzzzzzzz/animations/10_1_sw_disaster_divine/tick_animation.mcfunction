scoreboard players add @s aj.labyria.animation.10_1_sw_disaster_divine.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.10_1_sw_disaster_divine.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/10_1_sw_disaster_divine/apply_frame_as_root
execute if score @s aj.labyria.animation.10_1_sw_disaster_divine.local_anim_time matches 110.. run function animated_java:labyria/zzzzzzzz/animations/10_1_sw_disaster_divine/end