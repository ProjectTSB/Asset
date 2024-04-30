scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.haruclaire_v3.export_version dummy
scoreboard objectives add aj.haruclaire_v3.rig_loaded dummy
scoreboard objectives add aj.haruclaire_v3.animation.1_0_rod_idle.local_anim_time dummy
scoreboard objectives add aj.haruclaire_v3.animation.2_0_rod_icewall.local_anim_time dummy
scoreboard objectives add aj.haruclaire_v3.animation.3_0_rod_icebullet.local_anim_time dummy
scoreboard objectives add aj.haruclaire_v3.animation.4_0_rod_icefang.local_anim_time dummy
scoreboard objectives add aj.haruclaire_v3.animation.5_0_rod_icespear.local_anim_time dummy
scoreboard objectives add aj.haruclaire_v3.animation.6_0_rod_iceray.local_anim_time dummy
scoreboard objectives add aj.haruclaire_v3.animation.1_0_rod_idle.loop_mode dummy
scoreboard objectives add aj.haruclaire_v3.animation.2_0_rod_icewall.loop_mode dummy
scoreboard objectives add aj.haruclaire_v3.animation.3_0_rod_icebullet.loop_mode dummy
scoreboard objectives add aj.haruclaire_v3.animation.4_0_rod_icefang.loop_mode dummy
scoreboard objectives add aj.haruclaire_v3.animation.5_0_rod_icespear.loop_mode dummy
scoreboard objectives add aj.haruclaire_v3.animation.6_0_rod_iceray.loop_mode dummy
scoreboard players set $aj.haruclaire_v3.animation.1_0_rod_idle aj.id 0
scoreboard players set $aj.haruclaire_v3.animation.2_0_rod_icewall aj.id 1
scoreboard players set $aj.haruclaire_v3.animation.3_0_rod_icebullet aj.id 2
scoreboard players set $aj.haruclaire_v3.animation.4_0_rod_icefang aj.id 3
scoreboard players set $aj.haruclaire_v3.animation.5_0_rod_icespear aj.id 4
scoreboard players set $aj.haruclaire_v3.animation.6_0_rod_iceray aj.id 5
scoreboard players set $aj.haruclaire_v3.variant.default aj.id 0
scoreboard players set $aj.haruclaire_v3.variant.blink aj.id 1
scoreboard players set $aj.haruclaire_v3.variant.damage aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.haruclaire_v3.export_version aj.i -598760439
scoreboard players reset * aj.haruclaire_v3.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.haruclaire_v3.root] run function animated_java:haruclaire_v3/zzzzzzzz/on_load