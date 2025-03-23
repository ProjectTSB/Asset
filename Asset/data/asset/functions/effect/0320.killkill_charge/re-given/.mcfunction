#> asset:effect/0320.killkill_charge/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0320.killkill_charge/_/re-given

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
    execute if score $Charge Temporary matches 11 run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.35 1.6
    execute if score $Charge Temporary matches 11 run particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal
    execute if score $Charge Temporary matches 11 run data modify storage asset:context Stack set value 2


# リセット
    scoreboard players reset $Charge Temporary
