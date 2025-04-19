#> asset:effect/0279.poison_of_vinderre/tick/deal_damage
#
#
#
# @within function asset:effect/0279.poison_of_vinderre/tick/

#> Private
# @private
#declare score_holder $UserID

# ダメージを与える
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    data modify storage api: Argument.Damage set value 12
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $UserID Temporary
