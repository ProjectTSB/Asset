execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.frestchika_v2.rig_loaded 1
scoreboard players operation @s aj.frestchika_v2.export_version = aj.frestchika_v2.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:frestchika_v2/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.frestchika_v2.variant.default aj.id run function animated_java:frestchika_v2/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.frestchika_v2.variant.close_eye aj.id run function animated_java:frestchika_v2/zzzzzzzz/apply_variant/close_eye/as_root
execute if score #variant aj.i = $aj.frestchika_v2.variant.overheat_0 aj.id run function animated_java:frestchika_v2/zzzzzzzz/apply_variant/overheat_0/as_root
execute if score #variant aj.i = $aj.frestchika_v2.variant.overheat_1 aj.id run function animated_java:frestchika_v2/zzzzzzzz/apply_variant/overheat_1/as_root
execute if score #variant aj.i = $aj.frestchika_v2.variant.usume aj.id run function animated_java:frestchika_v2/zzzzzzzz/apply_variant/usume/as_root
execute if score #variant aj.i = $aj.frestchika_v2.variant.wink aj.id run function animated_java:frestchika_v2/zzzzzzzz/apply_variant/wink/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.0_0_former_idle aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/0_0_former_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.0_0_former_idle aj.id run scoreboard players operation @s aj.frestchika_v2.animation.0_0_former_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.0_1_former_idle_rare aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/0_1_former_idle_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.0_1_former_idle_rare aj.id run scoreboard players operation @s aj.frestchika_v2.animation.0_1_former_idle_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.1_0_former_tackle_pre aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/1_0_former_tackle_pre/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.1_0_former_tackle_pre aj.id run scoreboard players operation @s aj.frestchika_v2.animation.1_0_former_tackle_pre.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.1_1_former_tackle_move aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/1_1_former_tackle_move/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.1_1_former_tackle_move aj.id run scoreboard players operation @s aj.frestchika_v2.animation.1_1_former_tackle_move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.1_2_former_tackle_slash aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/1_2_former_tackle_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.1_2_former_tackle_slash aj.id run scoreboard players operation @s aj.frestchika_v2.animation.1_2_former_tackle_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.2_0_former_plasma_shock aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/2_0_former_plasma_shock/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.2_0_former_plasma_shock aj.id run scoreboard players operation @s aj.frestchika_v2.animation.2_0_former_plasma_shock.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.3_0_former_sonic_slash_pre aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/3_0_former_sonic_slash_pre/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.3_0_former_sonic_slash_pre aj.id run scoreboard players operation @s aj.frestchika_v2.animation.3_0_former_sonic_slash_pre.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.3_1_former_sonic_slash_tackle aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/3_1_former_sonic_slash_tackle/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.3_1_former_sonic_slash_tackle aj.id run scoreboard players operation @s aj.frestchika_v2.animation.3_1_former_sonic_slash_tackle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.4_0_former_gun aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/4_0_former_gun/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.4_0_former_gun aj.id run scoreboard players operation @s aj.frestchika_v2.animation.4_0_former_gun.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.5_0_former_beam_saber aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/5_0_former_beam_saber/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.5_0_former_beam_saber aj.id run scoreboard players operation @s aj.frestchika_v2.animation.5_0_former_beam_saber.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.6_0_former_thunder_bomb aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/6_0_former_thunder_bomb/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.6_0_former_thunder_bomb aj.id run scoreboard players operation @s aj.frestchika_v2.animation.6_0_former_thunder_bomb.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.99_0_former_overheat aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/99_0_former_overheat/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.99_0_former_overheat aj.id run scoreboard players operation @s aj.frestchika_v2.animation.99_0_former_overheat.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.100_0_later_idle aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/100_0_later_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.100_0_later_idle aj.id run scoreboard players operation @s aj.frestchika_v2.animation.100_0_later_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.100_1_later_idle_rare aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/100_1_later_idle_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.100_1_later_idle_rare aj.id run scoreboard players operation @s aj.frestchika_v2.animation.100_1_later_idle_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.101_0_later_plasuma_disaster_shock aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/101_0_later_plasuma_disaster_shock/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.101_0_later_plasuma_disaster_shock aj.id run scoreboard players operation @s aj.frestchika_v2.animation.101_0_later_plasuma_disaster_shock.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.101_1_later_plasuma_disastar_fall aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/101_1_later_plasuma_disastar_fall/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.101_1_later_plasuma_disastar_fall aj.id run scoreboard players operation @s aj.frestchika_v2.animation.101_1_later_plasuma_disastar_fall.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.101_2_later_plasuma_disastar_normal aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/101_2_later_plasuma_disastar_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.101_2_later_plasuma_disastar_normal aj.id run scoreboard players operation @s aj.frestchika_v2.animation.101_2_later_plasuma_disastar_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.102_0_later_sonic_slash_funnel aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/102_0_later_sonic_slash_funnel/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.102_0_later_sonic_slash_funnel aj.id run scoreboard players operation @s aj.frestchika_v2.animation.102_0_later_sonic_slash_funnel.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.102_1_later_sonic_slash_pre aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/102_1_later_sonic_slash_pre/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.102_1_later_sonic_slash_pre aj.id run scoreboard players operation @s aj.frestchika_v2.animation.102_1_later_sonic_slash_pre.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.102_2_later_sonic_slash_tackle aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/102_2_later_sonic_slash_tackle/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.102_2_later_sonic_slash_tackle aj.id run scoreboard players operation @s aj.frestchika_v2.animation.102_2_later_sonic_slash_tackle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.103_0_later_gun aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/103_0_later_gun/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.103_0_later_gun aj.id run scoreboard players operation @s aj.frestchika_v2.animation.103_0_later_gun.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.104_0_later_thunder_crisis aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/104_0_later_thunder_crisis/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.104_0_later_thunder_crisis aj.id run scoreboard players operation @s aj.frestchika_v2.animation.104_0_later_thunder_crisis.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.105_0_later_photon_beam aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/105_0_later_photon_beam/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.105_0_later_photon_beam aj.id run scoreboard players operation @s aj.frestchika_v2.animation.105_0_later_photon_beam.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.106_0_later_security_shutter aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/106_0_later_security_shutter/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.106_0_later_security_shutter aj.id run scoreboard players operation @s aj.frestchika_v2.animation.106_0_later_security_shutter.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.107_0_later_bolt_rush_pre aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/107_0_later_bolt_rush_pre/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.107_0_later_bolt_rush_pre aj.id run scoreboard players operation @s aj.frestchika_v2.animation.107_0_later_bolt_rush_pre.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.107_1_later_bolt_rush_iai aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/107_1_later_bolt_rush_iai/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.107_1_later_bolt_rush_iai aj.id run scoreboard players operation @s aj.frestchika_v2.animation.107_1_later_bolt_rush_iai.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.107_2_later_bolt_rush_finish aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/107_2_later_bolt_rush_finish/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.107_2_later_bolt_rush_finish aj.id run scoreboard players operation @s aj.frestchika_v2.animation.107_2_later_bolt_rush_finish.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.199_0_later_overheat aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/199_0_later_overheat/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.199_0_later_overheat aj.id run scoreboard players operation @s aj.frestchika_v2.animation.199_0_later_overheat.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.200_0_opening aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/200_0_opening/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.200_0_opening aj.id run scoreboard players operation @s aj.frestchika_v2.animation.200_0_opening.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.201_0_changing aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/201_0_changing/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.201_0_changing aj.id run scoreboard players operation @s aj.frestchika_v2.animation.201_0_changing.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.frestchika_v2.animation.202_0_finish aj.id run function animated_java:frestchika_v2/zzzzzzzz/animations/202_0_finish/apply_frame_as_root
execute if score #animation aj.i = $aj.frestchika_v2.animation.202_0_finish aj.id run scoreboard players operation @s aj.frestchika_v2.animation.202_0_finish.local_anim_time = #frame aj.i
execute at @s run function #animated_java:frestchika_v2/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i