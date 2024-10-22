scoreboard players add @s aj.tultaria.animation.attack_melee_4_windup.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.attack_melee_4_windup.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/attack_melee_4_windup/apply_frame_as_root
execute if score @s aj.tultaria.animation.attack_melee_4_windup.local_anim_time matches 10.. run function animated_java:tultaria/zzzzzzzz/animations/attack_melee_4_windup/end