#> asset:object/2031.giant_pumpkin/tick/beginning_hit
#
# 回り始めにプレイヤーを轢いたとき
#
# @within function asset:object/2031.giant_pumpkin/tick/set_spin

# ダメージ
    data modify storage api: Argument.Damage set value 12
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.2] run function api:damage/
    function api:damage/reset
