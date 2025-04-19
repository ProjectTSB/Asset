#> asset:effect/0324.scripture_gambling/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0324.scripture_gambling/_/tick

# 演出
#    execute rotated ~ 0 run function asset:effect/0324.scripture_gambling/tick/vfx

# パーティクル
    particle dust 1 1 0.5 1 ~ ~0.1 ~ 0.3 0.1 0.3 1 10 force @a[distance=..32]
