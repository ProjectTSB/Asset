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
    data modify storage api: Argument.Damage set value 25.0f
    data modify storage api: Argument.AttackType set value "Physical"
    execute as @a if score @s UserID = $AppliedFrom Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $AppliedFrom Temporary
