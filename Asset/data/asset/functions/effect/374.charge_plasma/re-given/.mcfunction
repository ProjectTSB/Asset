#> asset:effect/374.charge_plasma/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/374.charge_plasma/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# チャージ時間を取得
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# 時間に応じてバフをスタック
    execute if score $Charge Temporary matches 25 run data modify storage asset:context Stack set value 2
    execute if score $Charge Temporary matches 50 run data modify storage asset:context Stack set value 3

# リセット
    scoreboard players reset $Charge Temporary
