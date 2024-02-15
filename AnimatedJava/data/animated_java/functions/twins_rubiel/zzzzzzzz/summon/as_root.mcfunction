execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.twins_rubiel.rig_loaded 1
scoreboard players operation @s aj.twins_rubiel.export_version = aj.twins_rubiel.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:twins_rubiel/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.twins_rubiel.variant.default aj.id run function animated_java:twins_rubiel/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.twins_rubiel.variant.blink aj.id run function animated_java:twins_rubiel/zzzzzzzz/apply_variant/blink/as_root
execute if score #variant aj.i = $aj.twins_rubiel.variant.damage aj.id run function animated_java:twins_rubiel/zzzzzzzz/apply_variant/damage/as_root
execute if score #variant aj.i = $aj.twins_rubiel.variant.jito aj.id run function animated_java:twins_rubiel/zzzzzzzz/apply_variant/jito/as_root
execute if score #variant aj.i = $aj.twins_rubiel.variant.stun aj.id run function animated_java:twins_rubiel/zzzzzzzz/apply_variant/stun/as_root
execute if score #variant aj.i = $aj.twins_rubiel.variant.surprise aj.id run function animated_java:twins_rubiel/zzzzzzzz/apply_variant/surprise/as_root
execute if score #variant aj.i = $aj.twins_rubiel.variant.wink aj.id run function animated_java:twins_rubiel/zzzzzzzz/apply_variant/wink/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.0_0_start aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/0_0_start/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.0_0_start aj.id run scoreboard players operation @s aj.twins_rubiel.animation.0_0_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.1_0_katana_start aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/1_0_katana_start/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.1_0_katana_start aj.id run scoreboard players operation @s aj.twins_rubiel.animation.1_0_katana_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.2_0_0_idle_katana_normal aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_0_idle_katana_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.2_0_0_idle_katana_normal aj.id run scoreboard players operation @s aj.twins_rubiel.animation.2_0_0_idle_katana_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.2_0_1_idle_katana_fun aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_1_idle_katana_fun/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.2_0_1_idle_katana_fun aj.id run scoreboard players operation @s aj.twins_rubiel.animation.2_0_1_idle_katana_fun.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.2_0_2_idle_katana_angry aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/2_0_2_idle_katana_angry/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.2_0_2_idle_katana_angry aj.id run scoreboard players operation @s aj.twins_rubiel.animation.2_0_2_idle_katana_angry.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_0_katana_moveslash aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/3_0_katana_moveslash/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_0_katana_moveslash aj.id run scoreboard players operation @s aj.twins_rubiel.animation.3_0_katana_moveslash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_1_katana_move_to_spear aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/3_1_katana_move_to_spear/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_1_katana_move_to_spear aj.id run scoreboard players operation @s aj.twins_rubiel.animation.3_1_katana_move_to_spear.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_2_katana_spear_damage aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/3_2_katana_spear_damage/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_2_katana_spear_damage aj.id run scoreboard players operation @s aj.twins_rubiel.animation.3_2_katana_spear_damage.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_3_katana_vacu_slash aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/3_3_katana_vacu_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.3_3_katana_vacu_slash aj.id run scoreboard players operation @s aj.twins_rubiel.animation.3_3_katana_vacu_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.4_0_katana_slash_double aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/4_0_katana_slash_double/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.4_0_katana_slash_double aj.id run scoreboard players operation @s aj.twins_rubiel.animation.4_0_katana_slash_double.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_0 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_0/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_0 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.5_0_katana_warp_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_1 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_1/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_1 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.5_0_katana_warp_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_2 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_2/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_2 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.5_0_katana_warp_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_3 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/5_0_katana_warp_3/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.5_0_katana_warp_3 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.5_0_katana_warp_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_0_katana_sheathe aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/6_0_katana_sheathe/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_0_katana_sheathe aj.id run scoreboard players operation @s aj.twins_rubiel.animation.6_0_katana_sheathe.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_1_katana_sheathe_wait_cross aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/6_1_katana_sheathe_wait_cross/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_1_katana_sheathe_wait_cross aj.id run scoreboard players operation @s aj.twins_rubiel.animation.6_1_katana_sheathe_wait_cross.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_2_katana_sheathe_cross aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/6_2_katana_sheathe_cross/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_2_katana_sheathe_cross aj.id run scoreboard players operation @s aj.twins_rubiel.animation.6_2_katana_sheathe_cross.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_3_katana_sheathe_counter aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/6_3_katana_sheathe_counter/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_3_katana_sheathe_counter aj.id run scoreboard players operation @s aj.twins_rubiel.animation.6_3_katana_sheathe_counter.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_4_katana_sheathe_damage aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/6_4_katana_sheathe_damage/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_4_katana_sheathe_damage aj.id run scoreboard players operation @s aj.twins_rubiel.animation.6_4_katana_sheathe_damage.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_0_katana_jumpslash aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/7_0_katana_jumpslash/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_0_katana_jumpslash aj.id run scoreboard players operation @s aj.twins_rubiel.animation.7_0_katana_jumpslash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_1_katana_horizon aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/7_1_katana_horizon/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_1_katana_horizon aj.id run scoreboard players operation @s aj.twins_rubiel.animation.7_1_katana_horizon.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_2_katana_horizon_w aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/7_2_katana_horizon_w/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_2_katana_horizon_w aj.id run scoreboard players operation @s aj.twins_rubiel.animation.7_2_katana_horizon_w.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/7_3_katana_dashattack_to_cross/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross aj.id run scoreboard players operation @s aj.twins_rubiel.animation.7_3_katana_dashattack_to_cross.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_4_katana_backjump aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/7_4_katana_backjump/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.7_4_katana_backjump aj.id run scoreboard players operation @s aj.twins_rubiel.animation.7_4_katana_backjump.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_0_katana_throw_start_normal aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/8_0_katana_throw_start_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_0_katana_throw_start_normal aj.id run scoreboard players operation @s aj.twins_rubiel.animation.8_0_katana_throw_start_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_1_katana_throw_failed aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/8_1_katana_throw_failed/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_1_katana_throw_failed aj.id run scoreboard players operation @s aj.twins_rubiel.animation.8_1_katana_throw_failed.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_2_katana_throw aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/8_2_katana_throw/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_2_katana_throw aj.id run scoreboard players operation @s aj.twins_rubiel.animation.8_2_katana_throw.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_3_katana_throw_pursuit aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/8_3_katana_throw_pursuit/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.8_3_katana_throw_pursuit aj.id run scoreboard players operation @s aj.twins_rubiel.animation.8_3_katana_throw_pursuit.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.11_0_scythe_start aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/11_0_scythe_start/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.11_0_scythe_start aj.id run scoreboard players operation @s aj.twins_rubiel.animation.11_0_scythe_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.12_0_0_idle_scythe_normal aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/12_0_0_idle_scythe_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.12_0_0_idle_scythe_normal aj.id run scoreboard players operation @s aj.twins_rubiel.animation.12_0_0_idle_scythe_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.12_0_1_idle_scythe_fun aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/12_0_1_idle_scythe_fun/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.12_0_1_idle_scythe_fun aj.id run scoreboard players operation @s aj.twins_rubiel.animation.12_0_1_idle_scythe_fun.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.12_0_0_idle_scythe_angry aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/12_0_0_idle_scythe_angry/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.12_0_0_idle_scythe_angry aj.id run scoreboard players operation @s aj.twins_rubiel.animation.12_0_0_idle_scythe_angry.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_0_scythe_warp_0 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/13_0_scythe_warp_0/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_0_scythe_warp_0 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.13_0_scythe_warp_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_1_scythe_warp_1_slash aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/13_1_scythe_warp_1_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_1_scythe_warp_1_slash aj.id run scoreboard players operation @s aj.twins_rubiel.animation.13_1_scythe_warp_1_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_2_scythe_warp_2_upper aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/13_2_scythe_warp_2_upper/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_2_scythe_warp_2_upper aj.id run scoreboard players operation @s aj.twins_rubiel.animation.13_2_scythe_warp_2_upper.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_3_scythe_warp_3_throw aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/13_3_scythe_warp_3_throw/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_3_scythe_warp_3_throw aj.id run scoreboard players operation @s aj.twins_rubiel.animation.13_3_scythe_warp_3_throw.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_4_scythe_warp_4_end aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/13_4_scythe_warp_4_end/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.13_4_scythe_warp_4_end aj.id run scoreboard players operation @s aj.twins_rubiel.animation.13_4_scythe_warp_4_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.new aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/new/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.new aj.id run scoreboard players operation @s aj.twins_rubiel.animation.new.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_2_katana_sheathe_iai aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/6_2_katana_sheathe_iai/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.6_2_katana_sheathe_iai aj.id run scoreboard players operation @s aj.twins_rubiel.animation.6_2_katana_sheathe_iai.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.30_0_sync_goalong aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/30_0_sync_goalong/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.30_0_sync_goalong aj.id run scoreboard players operation @s aj.twins_rubiel.animation.30_0_sync_goalong.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.31_0_sync_crossfire_0 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/31_0_sync_crossfire_0/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.31_0_sync_crossfire_0 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.31_0_sync_crossfire_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.31_1_sync_crossfire_1 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/31_1_sync_crossfire_1/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.31_1_sync_crossfire_1 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.31_1_sync_crossfire_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.32_0_sync_throwattack_0 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/32_0_sync_throwattack_0/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.32_0_sync_throwattack_0 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.32_0_sync_throwattack_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.32_0_sync_throwattack_1 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/32_0_sync_throwattack_1/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.32_0_sync_throwattack_1 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.32_0_sync_throwattack_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.twins_rubiel.animation.32_0_sync_throwattack_9 aj.id run function animated_java:twins_rubiel/zzzzzzzz/animations/32_0_sync_throwattack_9/apply_frame_as_root
execute if score #animation aj.i = $aj.twins_rubiel.animation.32_0_sync_throwattack_9 aj.id run scoreboard players operation @s aj.twins_rubiel.animation.32_0_sync_throwattack_9.local_anim_time = #frame aj.i
execute at @s run function #animated_java:twins_rubiel/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i