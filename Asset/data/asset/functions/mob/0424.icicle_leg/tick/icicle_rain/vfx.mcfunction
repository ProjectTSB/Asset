#> asset:mob/0424.icicle_leg/tick/icicle_rain/vfx
#
# つららっぽく見えるかなこれ
#
# @within function asset:mob/0424.icicle_leg/tick/icicle_rain/

# パーティクル
    particle dust 0.4 0.8 1 1 ~ ~1 ~ 0 2 0 0 25
    particle dust 0.6 0.9 1 1 ~ ~1 ~ 0 2 0 0 25
    particle minecraft:block ice ~ ~ ~ 0.2 0 0.2 0 5
    particle minecraft:crit ~ ~ ~ 0 0 0 1 5

# サウンド
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1.5
