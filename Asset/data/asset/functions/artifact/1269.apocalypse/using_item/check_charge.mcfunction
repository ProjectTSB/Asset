#> asset:artifact/1269.apocalypse/using_item/check_charge
#
#
#
# @within function asset:artifact/1269.apocalypse/using_item/3.main

#> Private
# @private
    #declare score_holder $Diff

# gametimeと最後に使用したTickの差を求める
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= @s Z9.LatestChargeTick

# LatestChargeTickを更新
    execute store result score @s Z9.LatestChargeTick run time query gametime

# $Diffの差が1以下なら、チャージを+1
    execute if score $Diff Temporary matches ..1 run scoreboard players add @s Z9.Charge 1

# $Diffの差が2以上なら、チャージをリセット
    execute if score $Diff Temporary matches 2.. run scoreboard players reset @s Z9.Charge

# リセット
    scoreboard players reset $Diff Temporary
