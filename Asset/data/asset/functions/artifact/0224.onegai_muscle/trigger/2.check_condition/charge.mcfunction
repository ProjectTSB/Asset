#> asset:artifact/0224.onegai_muscle/trigger/2.check_condition/charge
#
#
#
# @within function asset:artifact/0224.onegai_muscle/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Diff

# 演出
    particle minecraft:trial_spawner_detection ~ ~ ~ 1 0.4 1 0 1

# gametimeと最後に使用したTickの差を求める
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= @s 68.LatestChargeTick

# LatestChargeTickを更新
    execute store result score @s 68.LatestChargeTick run time query gametime

# $Diffの差が1以下なら、チャージを+1
    execute if score $Diff Temporary matches ..1 run scoreboard players add @s 68.Charge 1

# $Diffの差が2以上なら、チャージをリセット
    execute if score $Diff Temporary matches 2.. run scoreboard players reset @s 68.Charge

# チャージが20以上でなければCanUsedを削除
    execute unless score @s 68.Charge matches 20.. run tag @s remove CanUsed

# チャージが20以上溜まったならスコアをリセット
    execute if score @s 68.Charge matches 20.. run scoreboard players reset @s 68.LatestChargeTick
    execute if score @s 68.Charge matches 20.. run scoreboard players reset @s 68.Charge

# リセット
    scoreboard players reset $Diff Temporary
