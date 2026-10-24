#> asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/damage
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/

# ダメージ
    data modify storage api: Argument.Damage set value 300
    data modify storage api: Argument.AdditionalMPHeal set value 5
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=HitTarget,distance=..20] run function api:damage/
    function api:damage/reset

# HitTargetタグ削除
    tag @s remove HitTarget
