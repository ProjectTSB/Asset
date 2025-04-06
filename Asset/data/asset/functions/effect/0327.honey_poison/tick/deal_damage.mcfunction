#> asset:effect/0327.honey_poison/tick/deal_damage
#
#
#
# @within function asset:effect/0327.honey_poison/tick/

#> Private
# @private
    #declare score_holder $AppliedFrom

# ダメージを与える
    execute store result score $AppliedFrom Temporary run data get storage asset:context this.AppliedFrom
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @a if score @s UserID = $AppliedFrom Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $AppliedFrom Temporary
