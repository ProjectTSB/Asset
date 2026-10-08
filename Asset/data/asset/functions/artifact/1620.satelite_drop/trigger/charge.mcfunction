#> asset:artifact/1620.satelite_drop/trigger/charge
#
#
#
# @within function asset:artifact/1620.satelite_drop/trigger/**

# Effect395を(再)付与
    #攻撃情報も設定
    data modify storage api: Argument.FieldOverride.Damage set value 150
    data modify storage api: Argument.FieldOverride.MPThreshold set value 40
    data modify storage api: Argument.FieldOverride.AttackType set value "Magic"
    data modify storage api: Argument.FieldOverride.ElementType set value "Water"

    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
