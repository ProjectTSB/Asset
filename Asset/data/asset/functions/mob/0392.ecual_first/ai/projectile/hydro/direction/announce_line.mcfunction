#> asset:mob/0392.ecual_first/ai/projectile/hydro/direction/announce_line
#
# 予告線
#
# @within function asset:mob/0392.ecual_first/ai/projectile/hydro/2.tick

summon item_display ^ ^ ^ {interpolation_duration:0,teleport_duration:0,Tags:["AW.HydroAnnounce","AllowProcessingCommonTag","AutoKillWhenDiePassenger"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.2f,30f],scale:[0f,0f,60f]},item:{id:"purple_stained_glass",Count:1b},Passengers:[{id:"area_effect_cloud",Particle:"block air",Radius:0f,Duration:10}]}
tp @e[tag=AW.HydroAnnounce,distance=..0.001] ~ ~ ~ ~ ~
