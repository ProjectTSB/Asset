#> asset:mob/0392.ecual_first/ai/projectile/announce_line/debug
#
# デバッグ用
#
# @user
# @private

execute anchored eyes run summon item_display ^ ^ ^2 {interpolation_duration:0,teleport_duration:0,Tags:["AW.AnnounceInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,20f],scale:[0f,0f,40f]},item:{id:"air",Count:1b}}

execute anchored eyes positioned ^ ^ ^2 as @e[type=item_display,tag=AW.AnnounceInit,distance=..0.1] run tp @s ^ ^ ^ ~ ~

execute anchored eyes positioned ^ ^ ^2 as @e[type=item_display,tag=AW.AnnounceInit,distance=..0.1] run function asset:mob/0392.ecual_first/ai/projectile/announce_line/1.init.m {Num:-20}
