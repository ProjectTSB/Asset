#> asset:effect/0395.charge_satelite_drop/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0395.charge_satelite_drop/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# チャージ時間を取得&加算
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# チャージ時間30tickごとにスタックを加算
    scoreboard players operation $Charge Temporary %= $30 Const
    execute if score $Charge Temporary matches 0 run function asset:effect/0395.charge_satelite_drop/re-given/charge

# リセット
    scoreboard players reset $Charge Temporary
