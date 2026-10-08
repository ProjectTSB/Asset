#> asset:effect/0374.charge_plasma/end/attack/3/damage
#
#
#
# @within function asset:effect/0374.charge_plasma/end/attack/3/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.DamagePool[2]
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=HitTarget,distance=..20] run function api:damage/
    function api:damage/reset

# HitTargetタグ削除
    tag @s remove HitTarget
