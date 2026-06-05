#> asset:artifact/0027.bow_of_apollo/get_charge/recursive
# @within function
#   asset:artifact/0027.bow_of_apollo/get_charge/
#   asset:artifact/0027.bow_of_apollo/get_charge/recursive

#> private
# @private
    #declare score_holder $Cap

# データを取得
    execute store result score $Cap Temporary run data get storage asset:temp R.Temp.ChargeList[0].Cap
# チェック
    execute if score @s R.MPCharge >= $Cap Temporary run scoreboard players add $ChargeState Temporary 1
# リセット
    scoreboard players reset $Cap Temporary
# 再帰
    data remove storage asset:temp R.Temp.ChargeList[0]
    execute if data storage asset:temp R.Temp.ChargeList[0] run function asset:artifact/0027.bow_of_apollo/get_charge/recursive
