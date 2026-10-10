#> asset:artifact/1563.thunderflash/trigger/2.check_condition/charge
#
#
#
# @within function asset:artifact/1563.thunderflash/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Diff

# gametimeと最後に使用したTickの差を求める
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= @s 17F.LatestChargeTick

# LatestChargeTickを更新
    execute store result score @s 17F.LatestChargeTick run time query gametime

# $Diffの差が1以下なら、チャージを+1
    execute if score $Diff Temporary matches ..1 run scoreboard players add @s 17F.Charge 1

# $Diffの差が2以上なら、チャージをリセット
    execute if score $Diff Temporary matches 2.. run scoreboard players reset @s 17F.Charge

# チャージがN以上でなければCanUsedを削除
    execute unless score @s 17F.Charge matches 20.. run tag @s remove CanUsed

# チャージがN以上溜まったならスコアをリセット
    execute if score @s 17F.Charge matches 20.. run scoreboard players reset @s 17F.LatestChargeTick
    execute if score @s 17F.Charge matches 20.. run scoreboard players reset @s 17F.Charge

# リセット
    scoreboard players reset $Diff Temporary
