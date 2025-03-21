#> asset:effect/0315.charge_of_aurora_scythe/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0315.charge_of_aurora_scythe/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# ダメージとMP回復のデータ引き継ぎ
    data modify storage asset:context this.Damage set from storage asset:context PreviousField.Damage
    data modify storage asset:context this.AdditionalMPHeal set from storage asset:context PreviousField.AdditionalMPHeal

# チャージ段階取得
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge

# チャージ段階に比例してplaysoundとスタックを変える
    execute if score $Charge Temporary matches 11 run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.35 1.6
    execute if score $Charge Temporary matches 11 run data modify storage asset:context Stack set value 2
    execute if score $Charge Temporary matches 23 run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.4 1.8
    execute if score $Charge Temporary matches 23 run data modify storage asset:context Stack set value 3

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# リセット
    scoreboard players reset $Charge Temporary
