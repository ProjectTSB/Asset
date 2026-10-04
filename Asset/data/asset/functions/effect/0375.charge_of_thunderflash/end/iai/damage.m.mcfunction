#> asset:effect/0375.charge_of_thunderflash/end/iai/damage.m
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/iai/

# ダメージ
    $execute store result storage api: Argument.Damage double 1 run random value $(Min)..$(Max)
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 自身のTargetを削除
    tag @s remove Target
