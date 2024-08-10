#> asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
#
# 斬撃砲 ソニックブームエフェクト
#
# @within function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start

summon item_display ^ ^ ^ {interpolation_duration:0,Tags:["AV.SlashEffectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6f,6f,0.1f]},item:{id:"air",Count:1b}}

execute as @e[tag=AV.SlashEffectInit,distance=..0.1] run tp @s ^ ^ ^ ~ ~

execute as @e[tag=AV.SlashEffectInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/sonic_boom/1.init
