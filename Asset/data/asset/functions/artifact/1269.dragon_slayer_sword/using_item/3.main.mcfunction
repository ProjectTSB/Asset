#> asset:artifact/1269.dragon_slayer_sword/using_item/3.main
#
#
#
# @within function asset:artifact/1269.dragon_slayer_sword/using_item/2.check_condition

# チャージの更新
    #function asset:artifact/1269.dragon_slayer_sword/using_item/charge_check

#> Private
# @private
    #declare score_holder $Diff

# 演出
    particle minecraft:trial_spawner_detection ~ ~ ~ 1 0.4 1 0 1

# gametimeと最後に使用したTickの差を求める
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= @s Z9.LatestChargeTick

# LatestChargeTickを更新
    execute store result score @s Z9.LatestChargeTick run time query gametime

# $Diffの差が1以下なら、チャージを+1
    execute if score $Diff Temporary matches ..1 run scoreboard players add @s Z9.Charge 1

# $Diffの差が2以上なら、チャージをリセット
    execute if score $Diff Temporary matches 2.. run scoreboard players reset @s Z9.Charge

# スタック更新
    execute if score @s Z9.Charge matches 20 run data modify storage api: Argument.Stack set value 1
    execute if score @s Z9.Charge matches 35 run data modify storage api: Argument.Stack set value 2
    execute if score @s Z9.Charge matches 50 run data modify storage api: Argument.Stack set value 3


# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 334
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Diff Temporary
