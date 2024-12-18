#> asset:object/2021.hydro_storm/tick/direction/announce_line
#
# 予告線
#
# @within function asset:object/2021.hydro_storm/tick/

summon item_display ^ ^ ^ {interpolation_duration:0,teleport_duration:0,Tags:["2021.AnnounceLine","AllowProcessingCommonTag","AutoKillWhenDiePassenger"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.2f,30f],scale:[0f,0f,60f]},item:{id:"purple_stained_glass",Count:1b},Passengers:[{id:"area_effect_cloud",Particle:"block air",Radius:0f,Duration:10}]}
tp @e[tag=2021.AnnounceLine,distance=..0.001] ~ ~ ~ ~ ~
