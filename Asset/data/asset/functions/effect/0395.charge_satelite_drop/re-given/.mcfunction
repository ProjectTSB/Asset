#> asset:effect/0395.charge_satelite_drop/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0395.charge_satelite_drop/_/re-given

#> Private
# @private
    #declare score_holder $Charge
# @within function asset:effect/0395.charge_satelite_drop/re-given/**
    #declare score_holder $Stack

# Field引き継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField
    #チャージ時間はさらに加算
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# 既に最大でなければ、チャージ時間30tickごとにスタックを加算
    execute store result score $Stack Temporary run data get storage asset:context Stack
    scoreboard players operation $Charge Temporary %= $30 Const
    #MPチェック
    data modify storage api: Argument.Threshold set from storage asset:context this.MPThreshold
    function api:mp/check
    execute unless score $Stack Temporary matches 3 if score $Charge Temporary matches 0 if data storage api: Return{IsThresholdOrMore:true} run function asset:effect/0395.charge_satelite_drop/re-given/charge

# リセット
    scoreboard players reset $Charge Temporary
    scoreboard players reset $Stack Temporary
