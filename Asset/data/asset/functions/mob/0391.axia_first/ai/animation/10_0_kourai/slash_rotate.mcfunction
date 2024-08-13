#> asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_rotate
#
# 斬撃エフェクトを回転させる
#
# @within function asset:mob/0391.axia_first/ai/animation/10_0_kourai/

# Tempタグ付与
    tag @s add AV.Temp.This

# 幾何学を使用して回転させる
    execute as @e[tag=AV.SlashEffect,distance=..5,sort=nearest,limit=1] at @s facing entity @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] feet rotated ~235 0 positioned as @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] positioned ^ ^1.2 ^1.581 run tp @s ^ ^ ^ ~ ~

# Tempタグ消去
    tag @s remove AV.Temp.This
