#> asset:effect/0392.now_cooking/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0392.now_cooking/_/re-given

#> Private
# @private
    #declare score_holder $Charge

# Field上書き
    data modify storage asset:context this set from storage asset:context PreviousField

# チャージ時間取得&更新
    execute store result score $Charge Temporary run data get storage asset:context this.Charge
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# チャージ時間に応じてスタック更新&演出
    execute if score $Charge Temporary matches 12 run data modify storage asset:context Stack set value 2
    execute if score $Charge Temporary matches 12 run playsound block.note_block.chime player @a ~ ~ ~ 1 0.75

    execute if score $Charge Temporary matches 24 run data modify storage asset:context Stack set value 3
    execute if score $Charge Temporary matches 24 run playsound block.note_block.chime player @a ~ ~ ~ 1 1.0

    execute if score $Charge Temporary matches 36 run data modify storage asset:context Stack set value 4
    execute if score $Charge Temporary matches 36 run playsound block.note_block.chime player @a ~ ~ ~ 1 1.5

# リセット
    scoreboard players reset $Charge Temporary
