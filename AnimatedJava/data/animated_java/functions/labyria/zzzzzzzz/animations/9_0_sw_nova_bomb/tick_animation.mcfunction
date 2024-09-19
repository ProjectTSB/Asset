scoreboard players add @s aj.labyria.animation.9_0_sw_nova_bomb.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.9_0_sw_nova_bomb.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/9_0_sw_nova_bomb/apply_frame_as_root
execute if score @s aj.labyria.animation.9_0_sw_nova_bomb.local_anim_time matches 168.. run function animated_java:labyria/zzzzzzzz/animations/9_0_sw_nova_bomb/end