#> asset:effect/0205.convallatoxin/tick/deal_damage
#
#
#
# @within function asset:effect/0205.convallatoxin/tick/

#> Private
# @private
#declare score_holder $AppliedFrom

# ダメージを与える
    execute store result score $AppliedFrom Temporary run data get storage asset:context this.AppliedFrom
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    execute as @a if score @s UserID = $AppliedFrom Temporary run function api:damage/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $AppliedFrom Temporary
