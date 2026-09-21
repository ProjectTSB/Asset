#> asset:effect/0394.charge_of_volt_rave/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0394.charge_of_volt_rave/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# 演出
    execute anchored eyes positioned ^-0.2 ^-0.2 ^0.7 run particle dust 0 1 0 0.7 ~ ~ ~ 0 0 0 0 1 normal @a

# データ引き継ぎ
    data modify storage asset:context this.Damage set from storage asset:context PreviousField.Damage
    data modify storage asset:context this.MaxRange set from storage asset:context PreviousField.MaxRange
    data modify storage asset:context this.IsFullCharge set from storage asset:context PreviousField.IsFullCharge

# チャージ段階取得
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# チャージ直前演出
    execute if score $Charge Temporary matches 17 run function asset:effect/0394.charge_of_volt_rave/re-given/before_charge

# 最大チャージ時
    execute if score $Charge Temporary matches 20 run function asset:effect/0394.charge_of_volt_rave/re-given/full_charge

# リセット
    scoreboard players reset $Charge Temporary
