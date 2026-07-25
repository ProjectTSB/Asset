#> asset:effect/0374.charge_plasma/end/attack/2
#
# 攻撃2の共通処理
#
# @within function asset:effect/0374.charge_plasma/end/**

    data modify storage api: Argument.ID set value 1169
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.DamagePool[1]
    data modify storage api: Argument.FieldOverride.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.FieldOverride.ElementType set from storage asset:context this.ElementType
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
