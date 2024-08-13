#> asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/3
#
# 
#
# @within function asset:mob/0391.axia_first/ai/animation/10_0_kourai/

# Tempタグ付与
    tag @s add AV.Temp.This

# ディスプレイ召喚
    summon item_display ^-0.6 ^1.1 ^1 {interpolation_duration:0,Tags:["AV.SlashEffectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[7f,7f,0.1f]},item:{id:"air",Count:1b}}

# ディスプレイの位置調整
    execute positioned ^-0.6 ^1.1 ^1 as @e[tag=AV.SlashEffectInit,distance=..0.1] at @s facing entity @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] feet rotated ~180 0 positioned as @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] positioned ^ ^1.1 ^1.166 run tp @s ^ ^ ^ ~ ~

# 斬撃エフェクト初期化
    execute as @e[tag=AV.SlashEffectInit,distance=..3] run function asset:mob/0391.axia_first/ai/projectile/slash_effect/1.init.m {Num:-10}

# Tempタグ消去
    tag @s remove AV.Temp.This
