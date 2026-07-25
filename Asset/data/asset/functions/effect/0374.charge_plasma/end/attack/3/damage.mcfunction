#> asset:effect/0374.charge_plasma/end/attack/3/damage
#
#
#
# @within function asset:effect/0374.charge_plasma/end/attack/3/rec


# ヒット済みタグ
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] add HitTarget

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.DamagePool[2]
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset
