#> asset:artifact/1061.hekireki/using_item/bow_charge
#
# バニラの弓の引き絞り検知
#
# @within function asset:artifact/1061.hekireki/using_item/2.check_condition

#> Private
# @private
    #declare score_holder $Diff

# gametimeと最後に使用したTickの差を求める
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= @s TH.LatestChargeTick

# LatestChargeTickを更新
    execute store result score @s TH.LatestChargeTick run time query gametime

# $Diffの差が1以下なら、チャージを+1
    execute if score $Diff Temporary matches ..1 run scoreboard players add @s TH.Charge 1

# $Diffの差が2以上なら、チャージをリセット
    execute if score $Diff Temporary matches 2.. run scoreboard players reset @s TH.Charge

# リセット
    scoreboard players reset $Diff Temporary
