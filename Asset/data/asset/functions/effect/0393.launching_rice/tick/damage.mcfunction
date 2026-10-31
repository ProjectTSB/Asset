#> asset:effect/0393.launching_rice/tick/damage
#
#
#
# @within function asset:effect/0393.launching_rice/tick/rec

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @p[tag=E0393.This] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# リセット
    tag @p[tag=E0393.This] remove E0393.This
