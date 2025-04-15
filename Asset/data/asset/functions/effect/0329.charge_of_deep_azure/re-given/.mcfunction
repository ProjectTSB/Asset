#> asset:effect/0329.charge_of_deep_azure/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0329.charge_of_deep_azure/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# ダメージのデータ引き継ぎ
    data modify storage asset:context this.Damage set from storage asset:context PreviousField.Damage

# チャージ段階取得
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# チャージ段階に比例して演出とスタックを変える
    execute if score $Charge Temporary matches 16 run playsound block.conduit.activate player @a ~ ~ ~ 0.8 1.6
    execute if score $Charge Temporary matches 16 run particle dust 0.1 0.1 0.7 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal
    execute if score $Charge Temporary matches 16 run data modify storage asset:context Stack set value 2

    execute if score $Charge Temporary matches 32 run playsound block.conduit.activate player @a ~ ~ ~ 0.9 1.8
    execute if score $Charge Temporary matches 32 run particle dust 0 0 0.4 1.2 ~ ~0.4 ~ 0.25 0.25 0.25 0 25 normal
    execute if score $Charge Temporary matches 32 run data modify storage asset:context Stack set value 3

# リセット
    scoreboard players reset $Charge Temporary
