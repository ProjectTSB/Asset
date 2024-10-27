scoreboard players add @s aj.labyria.animation.12_0_ms_magic_bullets.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.labyria.animation.12_0_ms_magic_bullets.local_anim_time
function animated_java:labyria/zzzzzzzz/animations/12_0_ms_magic_bullets/apply_frame_as_root
execute if score @s aj.labyria.animation.12_0_ms_magic_bullets.local_anim_time matches 175.. run function animated_java:labyria/zzzzzzzz/animations/12_0_ms_magic_bullets/end