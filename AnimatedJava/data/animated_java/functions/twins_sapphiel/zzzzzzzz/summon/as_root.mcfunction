execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.twins_sapphiel.rig_loaded 1
scoreboard players operation @s aj.twins_sapphiel.export_version = aj.twins_sapphiel.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:twins_sapphiel/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.twins_sapphiel.variant.default aj.id run function animated_java:twins_sapphiel/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.twins_sapphiel.variant.blink aj.id run function animated_java:twins_sapphiel/zzzzzzzz/apply_variant/blink/as_root
execute if score #variant aj.i = $aj.twins_sapphiel.variant.stun aj.id run function animated_java:twins_sapphiel/zzzzzzzz/apply_variant/stun/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.0_0_start aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/0_0_start/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.0_0_start aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.0_0_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.1_0_hg_start aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/1_0_hg_start/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.1_0_hg_start aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.1_0_hg_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.2_0_hg_idle aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/2_0_hg_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.2_0_hg_idle aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.2_0_hg_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.3_0_hg_shot_0 aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/3_0_hg_shot_0/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.3_0_hg_shot_0 aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.3_0_hg_shot_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.3_1_hg_shot_move_right aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/3_1_hg_shot_move_right/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.3_1_hg_shot_move_right aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.3_1_hg_shot_move_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.3_1_hg_shot_move_left aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/3_1_hg_shot_move_left/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.3_1_hg_shot_move_left aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.3_1_hg_shot_move_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.4_0_hg_backstep_shot aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/4_0_hg_backstep_shot/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.4_0_hg_backstep_shot aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.4_0_hg_backstep_shot.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.5_0_hg_riderkick aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/5_0_hg_riderkick/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.5_0_hg_riderkick aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.5_0_hg_riderkick.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.5_1_hg_spinkick aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/5_1_hg_spinkick/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.5_1_hg_spinkick aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.5_1_hg_spinkick.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.5_2_hg_kickcombo aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/5_2_hg_kickcombo/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.5_2_hg_kickcombo aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.5_2_hg_kickcombo.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.6_0_hg_punch aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/6_0_hg_punch/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.6_0_hg_punch aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.6_0_hg_punch.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.6_1_hg_lowkick aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/6_1_hg_lowkick/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.6_1_hg_lowkick aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.6_1_hg_lowkick.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.6_2_hg_stepshot aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/6_2_hg_stepshot/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.6_2_hg_stepshot aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.6_2_hg_stepshot.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.7_0_hg_warpshot aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/7_0_hg_warpshot/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.7_0_hg_warpshot aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.7_0_hg_warpshot.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.7_1_hg_heeloff aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/7_1_hg_heeloff/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.7_1_hg_heeloff aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.7_1_hg_heeloff.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.7_2_hg_heelspin aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/7_2_hg_heelspin/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.7_2_hg_heelspin aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.7_2_hg_heelspin.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.8_0_hg_fullburst_start aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/8_0_hg_fullburst_start/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.8_0_hg_fullburst_start aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.8_0_hg_fullburst_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.8_1_hg_fullburst_shot aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/8_1_hg_fullburst_shot/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.8_1_hg_fullburst_shot aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.8_1_hg_fullburst_shot.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.8_2_hg_fullburst_end aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/8_2_hg_fullburst_end/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.8_2_hg_fullburst_end aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.8_2_hg_fullburst_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.9_0_hg_reload aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/9_0_hg_reload/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.9_0_hg_reload aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.9_0_hg_reload.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.10_0_hg_move_right aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/10_0_hg_move_right/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.10_0_hg_move_right aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.10_0_hg_move_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.10_1_hg_move_left aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/10_1_hg_move_left/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.10_1_hg_move_left aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.10_1_hg_move_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.10_2_hg_move_back aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/10_2_hg_move_back/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.10_2_hg_move_back aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.10_2_hg_move_back.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.12_0_sg_idle aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/12_0_sg_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.12_0_sg_idle aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.12_0_sg_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.20_0_lc_start aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/20_0_lc_start/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.20_0_lc_start aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.20_0_lc_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.21_0_lc_shot_jump aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/21_0_lc_shot_jump/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.21_0_lc_shot_jump aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.21_0_lc_shot_jump.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.21_1_lc_shot_aim aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/21_1_lc_shot_aim/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.21_1_lc_shot_aim aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.21_1_lc_shot_aim.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.30_0_sync_goalong aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/30_0_sync_goalong/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.30_0_sync_goalong aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.30_0_sync_goalong.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.31_0_sync_crossfire_0 aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/31_0_sync_crossfire_0/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.31_0_sync_crossfire_0 aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.31_0_sync_crossfire_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.31_1_sync_crossfire_1 aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/31_1_sync_crossfire_1/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.31_1_sync_crossfire_1 aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.31_1_sync_crossfire_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.32_0_sync_throwattack_0 aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/32_0_sync_throwattack_0/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.32_0_sync_throwattack_0 aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.32_0_sync_throwattack_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_sapphiel.animation.32_0_sync_throwattack_2 aj.id run function animated_java:twins_sapphiel/zzzzzzzz/animations/32_0_sync_throwattack_2/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_sapphiel.animation.32_0_sync_throwattack_2 aj.id run scoreboard players operation @s aj.twins_sapphiel.animation.32_0_sync_throwattack_2.local_anim_time = #frame aj.i
execute at @s run function #animated_java:twins_sapphiel/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i