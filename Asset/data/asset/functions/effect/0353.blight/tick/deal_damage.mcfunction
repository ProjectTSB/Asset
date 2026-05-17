#> asset:effect/0353.blight/tick/deal_damage
#
#
#
# @within function asset:effect/0353.blight/tick/

#> Private
# @private
    #declare score_holder $AppliedFrom

# ダメージ
    execute store result score $AppliedFrom Temporary run data get storage asset:context this.AppliedFrom
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.ApplyTrigger set value false
    execute as @a if score @s UserID = $AppliedFrom Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $AppliedFrom Temporary
