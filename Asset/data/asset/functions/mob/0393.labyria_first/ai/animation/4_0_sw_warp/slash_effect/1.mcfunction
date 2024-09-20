#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/1
#
# 斬撃エフェクト表示
#
# @within function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/


# ディスプレイ召喚
    summon item_display ^-0.5 ^1 ^1 {interpolation_duration:0,Tags:["AV.SlashEffectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[7f,7f,0.1f]},item:{id:"air",Count:1b}}

# ディスプレイの位置調整
    execute positioned ^-0.5 ^1 ^1 as @e[tag=AV.SlashEffectInit,distance=..0.1] facing entity @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] feet rotated ~180 0 run tp @s ^ ^ ^ ~ ~

# 斬撃エフェクト初期化
    execute positioned ^-0.5 ^1 ^1 as @e[tag=AV.SlashEffectInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/slash_effect/1.init.m {Num:-11}
