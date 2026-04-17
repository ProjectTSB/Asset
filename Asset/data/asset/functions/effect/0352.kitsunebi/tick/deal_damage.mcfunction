#> asset:effect/0352.kitsunebi/tick/deal_damage
#
#
#
# @within function asset:effect/0352.kitsunebi/tick/

#> Private
# @private
    #declare score_holder $AppliedFrom

# vfx
    particle soul_fire_flame ~ ~1.2 ~ 0.4 0.4 0.4 0 9 normal @a

# playsound
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.5 1.4
    playsound entity.fox.bite hostile @a ~ ~ ~ 1 1

# ダメージを与える
    execute store result score $AppliedFrom Temporary run data get storage asset:context this.AppliedFrom
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.ApplyTrigger set value false
    execute as @a if score @s UserID = $AppliedFrom Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $AppliedFrom Temporary
