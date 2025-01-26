#> asset:object/2155.haruclaire_icelaser/tick/attack_loop
#
# Objectのtick時の処理
#
# @within asset:object/2155.haruclaire_icelaser/tick/attack

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 2155.Hit

# 演出
    particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 1
    particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 1
