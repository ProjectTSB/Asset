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

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# チャージ段階に比例して演出とスタックを変える
    execute if score $Charge Temporary matches 12 run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.35 1.6
    execute if score $Charge Temporary matches 12 run particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal
    execute if score $Charge Temporary matches 12 run data modify storage asset:context Stack set value 2
    execute if score $Charge Temporary matches 24 run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.4 1.8
    execute if score $Charge Temporary matches 24 run particle dust_color_transition 0.000 1.000 0.886 2 0 0.235 1.3 ~ ~0.4 ~ 0.25 0.25 0.25 0 25 normal
    execute if score $Charge Temporary matches 24 run data modify storage asset:context Stack set value 3

# リセット
    scoreboard players reset $Charge Temporary
