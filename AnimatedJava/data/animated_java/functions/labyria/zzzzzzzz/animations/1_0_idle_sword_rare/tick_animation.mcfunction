scoreboard players add @s aj.labyria.animation.1_0_idle_sword_rare.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.1_0_idle_sword_rare.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/1_0_idle_sword_rare/apply_frame_as_root
execute if score @s aj.labyria.animation.1_0_idle_sword_rare.local_anim_time matches 40.. run function animated_java:labyria/zzzzzzzz/animations/1_0_idle_sword_rare/end