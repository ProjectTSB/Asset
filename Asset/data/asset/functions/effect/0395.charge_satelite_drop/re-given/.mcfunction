#> asset:effect/0395.charge_satelite_drop/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0395.charge_satelite_drop/_/re-given

#> Private
# @private
    #declare score_holder $Charge
    #declare score_holder $MP

# Field引き継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField
    #チャージ時間はさらに加算
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# MPを取得
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP

# チャージ時間30tickごとにスタックを加算
    scoreboard players operation $Charge Temporary %= $30 Const
    execute if score $Charge Temporary matches 0 if score $MP Temporary matches 40.. run function asset:effect/0395.charge_satelite_drop/re-given/charge

# リセット
    scoreboard players reset $Charge Temporary
    scoreboard players reset $MP Temporary
