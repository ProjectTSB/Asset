#> asset:object/2155.haruclaire_icelaser/tick/check_hit
#
# Objectのtick時の処理
#
# @within asset:object/2155.haruclaire_icelaser/tick/attack

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 2155.Hit
