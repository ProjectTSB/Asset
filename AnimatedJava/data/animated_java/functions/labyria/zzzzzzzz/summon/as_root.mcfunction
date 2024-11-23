execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.labyria.rig_loaded 1
scoreboard players operation @s aj.labyria.export_version = aj.labyria.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:labyria/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.labyria.variant.default aj.id run function animated_java:labyria/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.labyria.variant.jitome aj.id run function animated_java:labyria/zzzzzzzz/apply_variant/jitome/as_root
execute if score #variant aj.i = $aj.labyria.variant.mabataki aj.id run function animated_java:labyria/zzzzzzzz/apply_variant/mabataki/as_root
execute if score #variant aj.i = $aj.labyria.variant.majime aj.id run function animated_java:labyria/zzzzzzzz/apply_variant/majime/as_root
execute if score #variant aj.i = $aj.labyria.variant.wink aj.id run function animated_java:labyria/zzzzzzzz/apply_variant/wink/as_root
execute if score #variant aj.i = $aj.labyria.variant.yarare aj.id run function animated_java:labyria/zzzzzzzz/apply_variant/yarare/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.1_0_idle_sword aj.id run function animated_java:labyria/zzzzzzzz/animations/1_0_idle_sword/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.1_0_idle_sword aj.id run scoreboard players operation @s aj.labyria.animation.1_0_idle_sword.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.1_1_idle_musket aj.id run function animated_java:labyria/zzzzzzzz/animations/1_1_idle_musket/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.1_1_idle_musket aj.id run scoreboard players operation @s aj.labyria.animation.1_1_idle_musket.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.1_0_idle_sword_rare aj.id run function animated_java:labyria/zzzzzzzz/animations/1_0_idle_sword_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.1_0_idle_sword_rare aj.id run scoreboard players operation @s aj.labyria.animation.1_0_idle_sword_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.2_0_sw_move_start aj.id run function animated_java:labyria/zzzzzzzz/animations/2_0_sw_move_start/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.2_0_sw_move_start aj.id run scoreboard players operation @s aj.labyria.animation.2_0_sw_move_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.2_1_ms_move_start aj.id run function animated_java:labyria/zzzzzzzz/animations/2_1_ms_move_start/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.2_1_ms_move_start aj.id run scoreboard players operation @s aj.labyria.animation.2_1_ms_move_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.2_2_sw_move_end aj.id run function animated_java:labyria/zzzzzzzz/animations/2_2_sw_move_end/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.2_2_sw_move_end aj.id run scoreboard players operation @s aj.labyria.animation.2_2_sw_move_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.2_3_ms_move_end aj.id run function animated_java:labyria/zzzzzzzz/animations/2_3_ms_move_end/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.2_3_ms_move_end aj.id run scoreboard players operation @s aj.labyria.animation.2_3_ms_move_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.3_0_ms_warp_1 aj.id run function animated_java:labyria/zzzzzzzz/animations/3_0_ms_warp_1/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.3_0_ms_warp_1 aj.id run scoreboard players operation @s aj.labyria.animation.3_0_ms_warp_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.3_1_ms_warp_2 aj.id run function animated_java:labyria/zzzzzzzz/animations/3_1_ms_warp_2/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.3_1_ms_warp_2 aj.id run scoreboard players operation @s aj.labyria.animation.3_1_ms_warp_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.3_2_ms_warp_3 aj.id run function animated_java:labyria/zzzzzzzz/animations/3_2_ms_warp_3/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.3_2_ms_warp_3 aj.id run scoreboard players operation @s aj.labyria.animation.3_2_ms_warp_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.4_0_sw_warp_1 aj.id run function animated_java:labyria/zzzzzzzz/animations/4_0_sw_warp_1/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.4_0_sw_warp_1 aj.id run scoreboard players operation @s aj.labyria.animation.4_0_sw_warp_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.4_1_sw_warp_2 aj.id run function animated_java:labyria/zzzzzzzz/animations/4_1_sw_warp_2/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.4_1_sw_warp_2 aj.id run scoreboard players operation @s aj.labyria.animation.4_1_sw_warp_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.5_0_sw_smoke_bomb aj.id run function animated_java:labyria/zzzzzzzz/animations/5_0_sw_smoke_bomb/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.5_0_sw_smoke_bomb aj.id run scoreboard players operation @s aj.labyria.animation.5_0_sw_smoke_bomb.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.6_0_sw_thunder_grenade_start aj.id run function animated_java:labyria/zzzzzzzz/animations/6_0_sw_thunder_grenade_start/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.6_0_sw_thunder_grenade_start aj.id run scoreboard players operation @s aj.labyria.animation.6_0_sw_thunder_grenade_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.6_1_sw_thunder_grenade_set aj.id run function animated_java:labyria/zzzzzzzz/animations/6_1_sw_thunder_grenade_set/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.6_1_sw_thunder_grenade_set aj.id run scoreboard players operation @s aj.labyria.animation.6_1_sw_thunder_grenade_set.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.6_2_sw_thunder_grenade_end aj.id run function animated_java:labyria/zzzzzzzz/animations/6_2_sw_thunder_grenade_end/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.6_2_sw_thunder_grenade_end aj.id run scoreboard players operation @s aj.labyria.animation.6_2_sw_thunder_grenade_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.7_0_sw_lightning_fast_start aj.id run function animated_java:labyria/zzzzzzzz/animations/7_0_sw_lightning_fast_start/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.7_0_sw_lightning_fast_start aj.id run scoreboard players operation @s aj.labyria.animation.7_0_sw_lightning_fast_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.8_0_sw_raigou aj.id run function animated_java:labyria/zzzzzzzz/animations/8_0_sw_raigou/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.8_0_sw_raigou aj.id run scoreboard players operation @s aj.labyria.animation.8_0_sw_raigou.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.9_0_sw_nova_bomb aj.id run function animated_java:labyria/zzzzzzzz/animations/9_0_sw_nova_bomb/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.9_0_sw_nova_bomb aj.id run scoreboard players operation @s aj.labyria.animation.9_0_sw_nova_bomb.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.9_1_sw_nova_bomb_finish aj.id run function animated_java:labyria/zzzzzzzz/animations/9_1_sw_nova_bomb_finish/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.9_1_sw_nova_bomb_finish aj.id run scoreboard players operation @s aj.labyria.animation.9_1_sw_nova_bomb_finish.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.10_1_sw_disaster_divine aj.id run function animated_java:labyria/zzzzzzzz/animations/10_1_sw_disaster_divine/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.10_1_sw_disaster_divine aj.id run scoreboard players operation @s aj.labyria.animation.10_1_sw_disaster_divine.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.11_0_sw_sg_warp_1 aj.id run function animated_java:labyria/zzzzzzzz/animations/11_0_sw_sg_warp_1/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.11_0_sw_sg_warp_1 aj.id run scoreboard players operation @s aj.labyria.animation.11_0_sw_sg_warp_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.11_1_sw_sg_warp_2 aj.id run function animated_java:labyria/zzzzzzzz/animations/11_1_sw_sg_warp_2/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.11_1_sw_sg_warp_2 aj.id run scoreboard players operation @s aj.labyria.animation.11_1_sw_sg_warp_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.11_2_sw_sg_warp_3 aj.id run function animated_java:labyria/zzzzzzzz/animations/11_2_sw_sg_warp_3/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.11_2_sw_sg_warp_3 aj.id run scoreboard players operation @s aj.labyria.animation.11_2_sw_sg_warp_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.12_0_ms_magic_bullets aj.id run function animated_java:labyria/zzzzzzzz/animations/12_0_ms_magic_bullets/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.12_0_ms_magic_bullets aj.id run scoreboard players operation @s aj.labyria.animation.12_0_ms_magic_bullets.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.13_0_ms_hexa_laser aj.id run function animated_java:labyria/zzzzzzzz/animations/13_0_ms_hexa_laser/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.13_0_ms_hexa_laser aj.id run scoreboard players operation @s aj.labyria.animation.13_0_ms_hexa_laser.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.14_0_sw_thunder_spear aj.id run function animated_java:labyria/zzzzzzzz/animations/14_0_sw_thunder_spear/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.14_0_sw_thunder_spear aj.id run scoreboard players operation @s aj.labyria.animation.14_0_sw_thunder_spear.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.14_1_sw_thunder_spear_end aj.id run function animated_java:labyria/zzzzzzzz/animations/14_1_sw_thunder_spear_end/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.14_1_sw_thunder_spear_end aj.id run scoreboard players operation @s aj.labyria.animation.14_1_sw_thunder_spear_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.15_0_sw_stan aj.id run function animated_java:labyria/zzzzzzzz/animations/15_0_sw_stan/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.15_0_sw_stan aj.id run scoreboard players operation @s aj.labyria.animation.15_0_sw_stan.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.15_1_ms_stan aj.id run function animated_java:labyria/zzzzzzzz/animations/15_1_ms_stan/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.15_1_ms_stan aj.id run scoreboard players operation @s aj.labyria.animation.15_1_ms_stan.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.16_0_invisible aj.id run function animated_java:labyria/zzzzzzzz/animations/16_0_invisible/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.16_0_invisible aj.id run scoreboard players operation @s aj.labyria.animation.16_0_invisible.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.labyria.animation.99_0_finish aj.id run function animated_java:labyria/zzzzzzzz/animations/99_0_finish/apply_frame_as_root
execute if score #animation aj.i = $aj.labyria.animation.99_0_finish aj.id run scoreboard players operation @s aj.labyria.animation.99_0_finish.local_anim_time = #frame aj.i
execute at @s run function #animated_java:labyria/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i