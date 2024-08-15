#> asset:mob/0391.axia_first/ai/projectile/shock_wave/vfx/cast
#
# 爆発演出
#
# @within function asset:mob/0391.axia_first/ai/projectile/shock_wave/3.cast

# 追加パーティクル
    particle dust 0.75 0.0 0.0 3 ~ ~1 ~ 2.5 0.5 2.5 0 30 force @a[distance=..32]
    particle dust 0.75 0.0 0.0 2 ~ ~4 ~ 1.5 2 1.5 0 30 force @a[distance=..32]
    particle dust 0.75 0.0 0.0 1.5 ~ ~8 ~ 1 4 1 0 30 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 1.5
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 0.9
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 0.6
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.85
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.86
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.45 1.5

# Tempタグ付与
    tag @s add AV.Temp.This

# ディスプレイ召喚
    summon item_display ^ ^0.2 ^ {interpolation_duration:0,Tags:["AV.SlashEffectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,12f,0.1f]},item:{id:"air",Count:1b}}

# 斬撃エフェクト初期化
    execute positioned ^ ^0.2 ^ as @e[tag=AV.SlashEffectInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/sonic_boom/1.init

# Tempタグ消去
    tag @s remove AV.Temp.This
