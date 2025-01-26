#> asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/announce_line
#
# 予告線 召喚
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/
#   asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/

execute anchored eyes run summon item_display ^ ^ ^2 {interpolation_duration:0,teleport_duration:0,Tags:["AV.AnnounceInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,20f],scale:[0.1f,0.1f,40f]},item:{id:"air",Count:1b}}

execute anchored eyes positioned ^ ^ ^2 as @e[type=item_display,tag=AV.AnnounceInit,distance=..0.1] run tp @s ^ ^ ^ ~ ~

execute anchored eyes positioned ^ ^ ^2 as @e[type=item_display,tag=AV.AnnounceInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/announce_line/1.init.m {Num:-25}
