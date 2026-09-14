#> asset:effect/0393.launching_rice/tick/damage
#
#
#
# @within function asset:effect/0393.launching_rice/tick/rec

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=0393.Target,distance=..2,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living_without_player,tag=0393.Target,distance=..2,limit=1] remove 0393.Target
