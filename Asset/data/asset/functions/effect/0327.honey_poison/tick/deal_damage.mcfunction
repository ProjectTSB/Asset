#> asset:effect/0327.honey_poison/tick/deal_damage
#
#
#
# @within function asset:effect/0327.honey_poison/tick/

#> Private
# @private
    #declare score_holder $AppliedFrom

# vfx
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.5 0.5 0 10 normal

# playsound(hostileなのは被ダメ音のため)
    playsound minecraft:block.honey_block.step hostile @a ~ ~ ~ 0.7 1.5

# ダメージを与える
    execute store result score $AppliedFrom Temporary run data get storage asset:context this.AppliedFrom
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @a if score @s UserID = $AppliedFrom Temporary run function api:damage/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $AppliedFrom Temporary
