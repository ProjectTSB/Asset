#> asset:artifact/0986.order_of_healing/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/986/equip/


# VFX
    particle heart ~ ~1 ~ 0.4 0.4 0.4 1 8

# 体力回復量+20%
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    data modify storage api: Argument.Amount set value 0.20
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add

# MP回復量+20%
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    data modify storage api: Argument.Amount set value 0.20
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 攻撃力-35%
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    data modify storage api: Argument.Amount set value -0.35
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add

# 効果付与のフラグ設定
    tag @s add RE.Modifier