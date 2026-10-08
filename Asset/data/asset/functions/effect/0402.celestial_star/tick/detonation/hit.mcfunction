#> asset:effect/0402.celestial_star/tick/detonation/hit
#
# 実行者の敵へダメージを与え、命中の光を出す
#
# @within function asset:effect/0402.celestial_star/tick/detonation/damage.m

    function api:damage/
    particle enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20
