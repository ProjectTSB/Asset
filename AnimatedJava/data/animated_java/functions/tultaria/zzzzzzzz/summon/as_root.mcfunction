execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tultaria.rig_loaded 1
scoreboard players operation @s aj.tultaria.export_version = aj.tultaria.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:tultaria/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.tultaria.variant.normal aj.id run function animated_java:tultaria/zzzzzzzz/apply_variant/normal/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.neutral_air aj.id run function animated_java:tultaria/zzzzzzzz/animations/neutral_air/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.neutral_air aj.id run scoreboard players operation @s aj.tultaria.animation.neutral_air.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_1_right aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_magic_1_right/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_1_right aj.id run scoreboard players operation @s aj.tultaria.animation.attack_magic_1_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_1_left aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_magic_1_left/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_1_left aj.id run scoreboard players operation @s aj.tultaria.animation.attack_magic_1_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_2_right aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_magic_2_right/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_2_right aj.id run scoreboard players operation @s aj.tultaria.animation.attack_magic_2_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_2_left aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_magic_2_left/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_2_left aj.id run scoreboard players operation @s aj.tultaria.animation.attack_magic_2_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_3_right aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_magic_3_right/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_3_right aj.id run scoreboard players operation @s aj.tultaria.animation.attack_magic_3_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_3_right_loop aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_magic_3_right_loop/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_magic_3_right_loop aj.id run scoreboard players operation @s aj.tultaria.animation.attack_magic_3_right_loop.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_1 aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_melee_1/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_1 aj.id run scoreboard players operation @s aj.tultaria.animation.attack_melee_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_2 aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_melee_2/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_2 aj.id run scoreboard players operation @s aj.tultaria.animation.attack_melee_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_3 aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_melee_3/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_3 aj.id run scoreboard players operation @s aj.tultaria.animation.attack_melee_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_4_windup aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_melee_4_windup/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_4_windup aj.id run scoreboard players operation @s aj.tultaria.animation.attack_melee_4_windup.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_4_active aj.id run function animated_java:tultaria/zzzzzzzz/animations/attack_melee_4_active/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.attack_melee_4_active aj.id run scoreboard players operation @s aj.tultaria.animation.attack_melee_4_active.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.dodge_back aj.id run function animated_java:tultaria/zzzzzzzz/animations/dodge_back/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.dodge_back aj.id run scoreboard players operation @s aj.tultaria.animation.dodge_back.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.dodge_side aj.id run function animated_java:tultaria/zzzzzzzz/animations/dodge_side/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.dodge_side aj.id run scoreboard players operation @s aj.tultaria.animation.dodge_side.local_anim_time = #frame aj.i
execute at @s run function #animated_java:tultaria/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i