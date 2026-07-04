#> asset:effect/374.charge_plasma/end/attack/3/damage
#
#
#
# @within function asset:effect/374.charge_plasma/end/attack/3/rec


# ヒット済みタグ
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] add HitTarget

# ダメージ
    data modify storage api: Argument.Damage set value 300
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set value 5
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset
