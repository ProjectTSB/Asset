#> asset:effect/0339.will_o_wisp/tick/deal_damage
#
#
#
# @within function asset:effect/0339.will_o_wisp/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.3 1
    particle soul_fire_flame ~ ~1.2 ~ 0.4 0.4 0.4 0.05 12
    #particle minecraft:dust_color_transition 0.3 1 1 1.3 1 0.3 0.7 ~ ~1.2 ~ 0.4 0.4 0.4 0 10

# ダメージを与える
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $UserID Temporary
