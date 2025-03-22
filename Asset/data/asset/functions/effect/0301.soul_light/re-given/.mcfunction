#> asset:effect/0301.soul_light/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0301.soul_light/_/re-given

#> private
# @private
    #declare score_holder $8D.Temp1
    #declare score_holder $8D.Temp2

# より Stack の大きい方を残す
    # Stack を取得
        execute store result score $8D.Temp1 Temporary run data get storage asset:context PreviousField.Stack
        execute store result score $8D.Temp2 Temporary run data get storage asset:context Stack
    # より大きい方を残す
        execute if score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context Stack set from storage asset:context PreviousField.Stack
        # execute if score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context Duration set from storage asset:context PreviousField.Duration
        execute if score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context this.UserID set from storage asset:context PreviousField.UserID
        execute if score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context this.Heal set from storage asset:context PreviousField.Heal
        # execute if score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context this.Tick set value 20
        # execute unless score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context this.UserID set from storage asset:context this.UserID
        # execute unless score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context this.Heal set from storage asset:context this.Heal
        execute unless score $8D.Temp1 Temporary >= $8D.Temp2 Temporary run data modify storage asset:context this.Tick set value 20

# Stack と Duration を保存する
    data modify storage asset:context this.Stack set from storage asset:context Stack
    # data modify storage asset:context this.Duration set from storage asset:context Duration

# リセット
    scoreboard players reset $8D.Temp1 Temporary
    scoreboard players reset $8D.Temp2 Temporary
