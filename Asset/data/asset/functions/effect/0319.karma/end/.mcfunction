#> asset:effect/0319.karma/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0319.karma/_/end

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle dust 1 1 1 1 ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 0 0 0 1 ~ ~5 ~ 0.7 5 0.7 1 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 8
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50

    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.4 2
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.4 0

# ダメージを与える
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.AttackType set value "Magic"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset
# リセット
    scoreboard players reset $UserID Temporary
