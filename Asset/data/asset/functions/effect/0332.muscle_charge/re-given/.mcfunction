#> asset:effect/0332.muscle_charge/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0332.muscle_charge/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# チャージ段階取得
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# リセット
    scoreboard players reset $Charge Temporary

#tellraw @a {"storage": "asset:context","nbt": "this.Charge"}
