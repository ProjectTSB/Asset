execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.axia.rig_loaded 1
scoreboard players operation @s aj.axia.export_version = aj.axia.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:axia/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.axia.variant.default aj.id run function animated_java:axia/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.axia.variant.jitome aj.id run function animated_java:axia/zzzzzzzz/apply_variant/jitome/as_root
execute if score #variant aj.i = $aj.axia.variant.mabataki aj.id run function animated_java:axia/zzzzzzzz/apply_variant/mabataki/as_root
execute if score #variant aj.i = $aj.axia.variant.mazime aj.id run function animated_java:axia/zzzzzzzz/apply_variant/mazime/as_root
execute if score #variant aj.i = $aj.axia.variant.wink aj.id run function animated_java:axia/zzzzzzzz/apply_variant/wink/as_root
execute if score #variant aj.i = $aj.axia.variant.yarare aj.id run function animated_java:axia/zzzzzzzz/apply_variant/yarare/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.1_0_idle aj.id run function animated_java:axia/zzzzzzzz/animations/1_0_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.1_0_idle aj.id run scoreboard players operation @s aj.axia.animation.1_0_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.1_1_idle_rare aj.id run function animated_java:axia/zzzzzzzz/animations/1_1_idle_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.1_1_idle_rare aj.id run scoreboard players operation @s aj.axia.animation.1_1_idle_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.2_0_normal_slash aj.id run function animated_java:axia/zzzzzzzz/animations/2_0_normal_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.2_0_normal_slash aj.id run scoreboard players operation @s aj.axia.animation.2_0_normal_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.3_0_triple_slash aj.id run function animated_java:axia/zzzzzzzz/animations/3_0_triple_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.3_0_triple_slash aj.id run scoreboard players operation @s aj.axia.animation.3_0_triple_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.4_0_naginagi aj.id run function animated_java:axia/zzzzzzzz/animations/4_0_naginagi/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.4_0_naginagi aj.id run scoreboard players operation @s aj.axia.animation.4_0_naginagi.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.6_0_moving_forward aj.id run function animated_java:axia/zzzzzzzz/animations/6_0_moving_forward/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.6_0_moving_forward aj.id run scoreboard players operation @s aj.axia.animation.6_0_moving_forward.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.6_1_moving_back aj.id run function animated_java:axia/zzzzzzzz/animations/6_1_moving_back/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.6_1_moving_back aj.id run scoreboard players operation @s aj.axia.animation.6_1_moving_back.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.7_0_moving_iai aj.id run function animated_java:axia/zzzzzzzz/animations/7_0_moving_iai/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.7_0_moving_iai aj.id run scoreboard players operation @s aj.axia.animation.7_0_moving_iai.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.8_0_moving_spin aj.id run function animated_java:axia/zzzzzzzz/animations/8_0_moving_spin/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.8_0_moving_spin aj.id run scoreboard players operation @s aj.axia.animation.8_0_moving_spin.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.9_0_zangekihou aj.id run function animated_java:axia/zzzzzzzz/animations/9_0_zangekihou/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.9_0_zangekihou aj.id run scoreboard players operation @s aj.axia.animation.9_0_zangekihou.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.10_0_warp_start aj.id run function animated_java:axia/zzzzzzzz/animations/10_0_warp_start/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.10_0_warp_start aj.id run scoreboard players operation @s aj.axia.animation.10_0_warp_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.10_1_warp_slash_0 aj.id run function animated_java:axia/zzzzzzzz/animations/10_1_warp_slash_0/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.10_1_warp_slash_0 aj.id run scoreboard players operation @s aj.axia.animation.10_1_warp_slash_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.10_2_warp_slash_1 aj.id run function animated_java:axia/zzzzzzzz/animations/10_2_warp_slash_1/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.10_2_warp_slash_1 aj.id run scoreboard players operation @s aj.axia.animation.10_2_warp_slash_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.10_3_warp_slash_2 aj.id run function animated_java:axia/zzzzzzzz/animations/10_3_warp_slash_2/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.10_3_warp_slash_2 aj.id run scoreboard players operation @s aj.axia.animation.10_3_warp_slash_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.11_0_dimension_slash aj.id run function animated_java:axia/zzzzzzzz/animations/11_0_dimension_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.11_0_dimension_slash aj.id run scoreboard players operation @s aj.axia.animation.11_0_dimension_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.12_0_kourai aj.id run function animated_java:axia/zzzzzzzz/animations/12_0_kourai/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.12_0_kourai aj.id run scoreboard players operation @s aj.axia.animation.12_0_kourai.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.13_0_damage_1 aj.id run function animated_java:axia/zzzzzzzz/animations/13_0_damage_1/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.13_0_damage_1 aj.id run scoreboard players operation @s aj.axia.animation.13_0_damage_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.13_1_damage_2 aj.id run function animated_java:axia/zzzzzzzz/animations/13_1_damage_2/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.13_1_damage_2 aj.id run scoreboard players operation @s aj.axia.animation.13_1_damage_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.14_0_opening_attack aj.id run function animated_java:axia/zzzzzzzz/animations/14_0_opening_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.14_0_opening_attack aj.id run scoreboard players operation @s aj.axia.animation.14_0_opening_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.axia.animation.15_0_former_ending aj.id run function animated_java:axia/zzzzzzzz/animations/15_0_former_ending/apply_frame_as_root
execute if score #animation aj.i = $aj.axia.animation.15_0_former_ending aj.id run scoreboard players operation @s aj.axia.animation.15_0_former_ending.local_anim_time = #frame aj.i
execute at @s run function #animated_java:axia/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i