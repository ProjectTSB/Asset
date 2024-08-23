scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.ecual.export_version dummy
scoreboard objectives add aj.ecual.rig_loaded dummy
scoreboard objectives add aj.ecual.animation.1_0_idle.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.1_1_idle_rare.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.2_0_chill_rain.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.3_0_crystal_turret.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.4_0_summon_book.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.5_0_shining_ray.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.5_1_water_bullet.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.6_0_moving.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.7_0_holy_ray.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.8_0_quietus_rain.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.9_0_water_wall.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.10_0_hydro_storm.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.11_0_damage_1.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.11_1_damage_2.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.12_0_opening_attack.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.13_0_former_ending.local_anim_time dummy
scoreboard objectives add aj.ecual.animation.1_0_idle.loop_mode dummy
scoreboard objectives add aj.ecual.animation.1_1_idle_rare.loop_mode dummy
scoreboard objectives add aj.ecual.animation.2_0_chill_rain.loop_mode dummy
scoreboard objectives add aj.ecual.animation.3_0_crystal_turret.loop_mode dummy
scoreboard objectives add aj.ecual.animation.4_0_summon_book.loop_mode dummy
scoreboard objectives add aj.ecual.animation.5_0_shining_ray.loop_mode dummy
scoreboard objectives add aj.ecual.animation.5_1_water_bullet.loop_mode dummy
scoreboard objectives add aj.ecual.animation.6_0_moving.loop_mode dummy
scoreboard objectives add aj.ecual.animation.7_0_holy_ray.loop_mode dummy
scoreboard objectives add aj.ecual.animation.8_0_quietus_rain.loop_mode dummy
scoreboard objectives add aj.ecual.animation.9_0_water_wall.loop_mode dummy
scoreboard objectives add aj.ecual.animation.10_0_hydro_storm.loop_mode dummy
scoreboard objectives add aj.ecual.animation.11_0_damage_1.loop_mode dummy
scoreboard objectives add aj.ecual.animation.11_1_damage_2.loop_mode dummy
scoreboard objectives add aj.ecual.animation.12_0_opening_attack.loop_mode dummy
scoreboard objectives add aj.ecual.animation.13_0_former_ending.loop_mode dummy
scoreboard players set $aj.ecual.animation.1_0_idle aj.id 0
scoreboard players set $aj.ecual.animation.1_1_idle_rare aj.id 1
scoreboard players set $aj.ecual.animation.2_0_chill_rain aj.id 2
scoreboard players set $aj.ecual.animation.3_0_crystal_turret aj.id 3
scoreboard players set $aj.ecual.animation.4_0_summon_book aj.id 4
scoreboard players set $aj.ecual.animation.5_0_shining_ray aj.id 5
scoreboard players set $aj.ecual.animation.5_1_water_bullet aj.id 6
scoreboard players set $aj.ecual.animation.6_0_moving aj.id 7
scoreboard players set $aj.ecual.animation.7_0_holy_ray aj.id 8
scoreboard players set $aj.ecual.animation.8_0_quietus_rain aj.id 9
scoreboard players set $aj.ecual.animation.9_0_water_wall aj.id 10
scoreboard players set $aj.ecual.animation.10_0_hydro_storm aj.id 11
scoreboard players set $aj.ecual.animation.11_0_damage_1 aj.id 12
scoreboard players set $aj.ecual.animation.11_1_damage_2 aj.id 13
scoreboard players set $aj.ecual.animation.12_0_opening_attack aj.id 14
scoreboard players set $aj.ecual.animation.13_0_former_ending aj.id 15
scoreboard players set $aj.ecual.variant.default aj.id 0
scoreboard players set $aj.ecual.variant.jitome aj.id 1
scoreboard players set $aj.ecual.variant.mabaraki aj.id 2
scoreboard players set $aj.ecual.variant.majime aj.id 3
scoreboard players set $aj.ecual.variant.wink aj.id 4
scoreboard players set $aj.ecual.variant.yarare aj.id 5
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.ecual.export_version aj.i -1016458920
scoreboard players reset * aj.ecual.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.ecual.root] run function animated_java:ecual/zzzzzzzz/on_load