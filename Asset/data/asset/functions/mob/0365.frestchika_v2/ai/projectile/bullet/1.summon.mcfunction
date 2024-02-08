#> asset:mob/0365.frestchika_v2/ai/projectile/bullet/1.summon
#
# 弾幕 召喚
#
# @within function asset:mob/0365.frestchika_v2/**

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["A5.Temp.This","A5.PlasmaBullet"]}

# 初期化処理
    execute as @e[type=marker,tag=A5.Temp.This,distance=..0.01] at @s run function asset:mob/0365.frestchika_v2/ai/projectile/bullet/2.init