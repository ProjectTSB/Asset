#> asset:mob/0424.icicle_leg/tick/icicle_rain/damage
#
# ダメージ処理
#
# @within function asset:mob/0424.icicle_leg/tick/icicle_rain/

# ダメージ設定
    data modify storage api: Argument.Damage set value 16f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:damage/
    function api:damage/reset
