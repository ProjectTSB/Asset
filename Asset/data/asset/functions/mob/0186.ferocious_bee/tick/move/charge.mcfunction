#> asset:mob/0186.ferocious_bee/tick/move/charge
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/

# 演出
    particle cloud ^ ^0.7 ^-0.8 0.25 0.25 0.25 0 0

# 攻撃
    execute positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0186.ferocious_bee/tick/damage/

# 移動
    function asset:mob/0186.ferocious_bee/tick/move/
