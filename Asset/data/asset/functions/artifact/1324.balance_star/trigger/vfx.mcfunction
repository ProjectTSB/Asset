#> asset:artifact/1324.balance_star/trigger/vfx
#
#
#
# @within function asset:artifact/1324.balance_star/trigger/3.main

# 最もMPが多い/少ないプレイヤーに軽くパーティクルを出す
    execute at @p[tag=10S.HighestMP] run particle dust 0.384 0.373 0.953 0.75 ~ ~0.4 ~ 0.25 0.25 0.25 1 6 normal
    execute at @p[tag= 10S.LowestMP] run particle dust 0.588 0.914 1.000 1 ~ ~0.4 ~ 0.25 0.25 0.25 1 6 normal
