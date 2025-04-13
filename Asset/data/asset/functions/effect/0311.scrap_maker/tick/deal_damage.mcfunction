#> asset:effect/0311.scrap_maker/tick/deal_damage
#
#
#
# @within function asset:effect/0311.scrap_maker/tick/

#> Private
# @private
#declare score_holder $UserID

# 演出
    playsound entity.blaze.hurt player @a ~ ~ ~ 1.2 0.1
    playsound block.sand.step player @a ~ ~ ~ 1.0 0.8
    particle block stone ~ ~1 ~ 0.2 1 0.2 0 10
    particle block redstone_block ~ ~1 ~ 0.2 1 0.2 0 2
    particle crit ~ ~1 ~ 0.2 1 0.2 0.1 3

# ダメージを与える
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.AttackType set value "Magic"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $UserID Temporary
