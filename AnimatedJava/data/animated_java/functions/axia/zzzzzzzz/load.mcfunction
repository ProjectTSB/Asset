scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.axia.export_version dummy
scoreboard objectives add aj.axia.rig_loaded dummy
scoreboard objectives add aj.axia.animation.1_0_idle.local_anim_time dummy
scoreboard objectives add aj.axia.animation.1_1_idle_rare.local_anim_time dummy
scoreboard objectives add aj.axia.animation.2_0_normal_slash.local_anim_time dummy
scoreboard objectives add aj.axia.animation.3_0_triple_slash.local_anim_time dummy
scoreboard objectives add aj.axia.animation.4_0_naginagi.local_anim_time dummy
scoreboard objectives add aj.axia.animation.6_0_moving_forward.local_anim_time dummy
scoreboard objectives add aj.axia.animation.6_1_moving_back.local_anim_time dummy
scoreboard objectives add aj.axia.animation.7_0_moving_iai.local_anim_time dummy
scoreboard objectives add aj.axia.animation.8_0_moving_spin.local_anim_time dummy
scoreboard objectives add aj.axia.animation.9_0_zangekihou.local_anim_time dummy
scoreboard objectives add aj.axia.animation.10_0_warp_start.local_anim_time dummy
scoreboard objectives add aj.axia.animation.10_1_warp_slash_0.local_anim_time dummy
scoreboard objectives add aj.axia.animation.10_2_warp_slash_1.local_anim_time dummy
scoreboard objectives add aj.axia.animation.10_3_warp_slash_2.local_anim_time dummy
scoreboard objectives add aj.axia.animation.11_0_dimension_slash.local_anim_time dummy
scoreboard objectives add aj.axia.animation.12_0_kourai.local_anim_time dummy
scoreboard objectives add aj.axia.animation.13_0_damage_1.local_anim_time dummy
scoreboard objectives add aj.axia.animation.13_1_damage_2.local_anim_time dummy
scoreboard objectives add aj.axia.animation.14_0_opening_attack.local_anim_time dummy
scoreboard objectives add aj.axia.animation.15_0_former_ending.local_anim_time dummy
scoreboard objectives add aj.axia.animation.1_0_idle.loop_mode dummy
scoreboard objectives add aj.axia.animation.1_1_idle_rare.loop_mode dummy
scoreboard objectives add aj.axia.animation.2_0_normal_slash.loop_mode dummy
scoreboard objectives add aj.axia.animation.3_0_triple_slash.loop_mode dummy
scoreboard objectives add aj.axia.animation.4_0_naginagi.loop_mode dummy
scoreboard objectives add aj.axia.animation.6_0_moving_forward.loop_mode dummy
scoreboard objectives add aj.axia.animation.6_1_moving_back.loop_mode dummy
scoreboard objectives add aj.axia.animation.7_0_moving_iai.loop_mode dummy
scoreboard objectives add aj.axia.animation.8_0_moving_spin.loop_mode dummy
scoreboard objectives add aj.axia.animation.9_0_zangekihou.loop_mode dummy
scoreboard objectives add aj.axia.animation.10_0_warp_start.loop_mode dummy
scoreboard objectives add aj.axia.animation.10_1_warp_slash_0.loop_mode dummy
scoreboard objectives add aj.axia.animation.10_2_warp_slash_1.loop_mode dummy
scoreboard objectives add aj.axia.animation.10_3_warp_slash_2.loop_mode dummy
scoreboard objectives add aj.axia.animation.11_0_dimension_slash.loop_mode dummy
scoreboard objectives add aj.axia.animation.12_0_kourai.loop_mode dummy
scoreboard objectives add aj.axia.animation.13_0_damage_1.loop_mode dummy
scoreboard objectives add aj.axia.animation.13_1_damage_2.loop_mode dummy
scoreboard objectives add aj.axia.animation.14_0_opening_attack.loop_mode dummy
scoreboard objectives add aj.axia.animation.15_0_former_ending.loop_mode dummy
scoreboard players set $aj.axia.animation.1_0_idle aj.id 0
scoreboard players set $aj.axia.animation.1_1_idle_rare aj.id 1
scoreboard players set $aj.axia.animation.2_0_normal_slash aj.id 2
scoreboard players set $aj.axia.animation.3_0_triple_slash aj.id 3
scoreboard players set $aj.axia.animation.4_0_naginagi aj.id 4
scoreboard players set $aj.axia.animation.6_0_moving_forward aj.id 5
scoreboard players set $aj.axia.animation.6_1_moving_back aj.id 6
scoreboard players set $aj.axia.animation.7_0_moving_iai aj.id 7
scoreboard players set $aj.axia.animation.8_0_moving_spin aj.id 8
scoreboard players set $aj.axia.animation.9_0_zangekihou aj.id 9
scoreboard players set $aj.axia.animation.10_0_warp_start aj.id 10
scoreboard players set $aj.axia.animation.10_1_warp_slash_0 aj.id 11
scoreboard players set $aj.axia.animation.10_2_warp_slash_1 aj.id 12
scoreboard players set $aj.axia.animation.10_3_warp_slash_2 aj.id 13
scoreboard players set $aj.axia.animation.11_0_dimension_slash aj.id 14
scoreboard players set $aj.axia.animation.12_0_kourai aj.id 15
scoreboard players set $aj.axia.animation.13_0_damage_1 aj.id 16
scoreboard players set $aj.axia.animation.13_1_damage_2 aj.id 17
scoreboard players set $aj.axia.animation.14_0_opening_attack aj.id 18
scoreboard players set $aj.axia.animation.15_0_former_ending aj.id 19
scoreboard players set $aj.axia.variant.default aj.id 0
scoreboard players set $aj.axia.variant.jitome aj.id 1
scoreboard players set $aj.axia.variant.mabataki aj.id 2
scoreboard players set $aj.axia.variant.mazime aj.id 3
scoreboard players set $aj.axia.variant.wink aj.id 4
scoreboard players set $aj.axia.variant.yarare aj.id 5
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.axia.export_version aj.i 171795348
scoreboard players reset * aj.axia.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.axia.root] run function animated_java:axia/zzzzzzzz/on_load