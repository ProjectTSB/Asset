#> asset:artifact/1563.thunderflash/release_using_item/iai/damage
#
#
#
# @within function asset:artifact/1563.thunderflash/release_using_item/iai/

# ダメージ
    execute store result storage api: Argument.Damage double 0.1 run random value 3000..4000
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 自身のTargetを削除
    tag @s remove Target
