scoreboard players add @s aj.labyria.animation.5_0_sw_smoke_bomb.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.5_0_sw_smoke_bomb.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/5_0_sw_smoke_bomb/apply_frame_as_root
execute if score @s aj.labyria.animation.5_0_sw_smoke_bomb.local_anim_time matches 50.. run function animated_java:labyria/zzzzzzzz/animations/5_0_sw_smoke_bomb/end