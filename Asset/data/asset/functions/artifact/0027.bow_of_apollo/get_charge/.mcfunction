#> asset:artifact/0027.bow_of_apollo/get_charge/
#
# チャージ状態を取得する
#
# @input score R.MPCharge
# @output storage asset:temp R.ChargeState
# @within function asset:artifact/0027.bow_of_apollo/**

# 定数をコピー
    data modify storage asset:temp R.Temp.ChargeList set from storage asset:temp R.Const.Charge
# それぞれチェックする
    scoreboard players set $ChargeState Temporary 0
    function asset:artifact/0027.bow_of_apollo/get_charge/recursive
# 返り値
    execute store result storage asset:temp R.ChargeState int 1 run scoreboard players get $ChargeState Temporary
# リセット
    scoreboard players reset $ChargeState Temporary
    data remove storage asset:temp R.Temp
