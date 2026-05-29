#> asset:effect/0362.baking/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0362.baking/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# 常時の音
    playsound block.furnace.fire_crackle player @a ~ ~ ~ 1 0.8

# データ引き継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField

# チャージ段階取得
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# チャージ段階に比例して演出とスタックを変える
    execute if score $Charge Temporary matches 12 run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.9
    execute if score $Charge Temporary matches 12 run data modify storage asset:context Stack set value 2

    execute if score $Charge Temporary matches 24 run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 2.0
    execute if score $Charge Temporary matches 24 run data modify storage asset:context Stack set value 3

# リセット
    scoreboard players reset $Charge Temporary
