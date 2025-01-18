#> asset:object/2176.tiamat_darkbreath/tick/hit_2
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# ヒット判定
    execute positioned ^1.5 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 2176.Hit
    execute positioned ^-1.5 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 2176.Hit

# 演出
    particle dragon_breath ~ ~1 ~ 3 1 3 0 20 force
    particle cloud ~ ~1 ~ 3 1 3 0.2 30
    particle end_rod ~ ~1 ~ 3 1 3 0.2 10
