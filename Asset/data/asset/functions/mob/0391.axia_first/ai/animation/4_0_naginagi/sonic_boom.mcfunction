#> asset:mob/0391.axia_first/ai/animation/4_0_naginagi/sonic_boom
#
# ソニックブーム
#
# @within function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/

# Tempタグ付与
    tag @s add AV.Temp.This

# ディスプレイ召喚
    summon item_display ^ ^0.2 ^ {interpolation_duration:0,Tags:["AV.SlashEffectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,0.1f]},item:{id:"air",Count:1b}}

# 斬撃エフェクト初期化
    execute positioned ^ ^0.2 ^ as @e[tag=AV.SlashEffectInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/sonic_boom/1.init

# Tempタグ消去
    tag @s remove AV.Temp.This
