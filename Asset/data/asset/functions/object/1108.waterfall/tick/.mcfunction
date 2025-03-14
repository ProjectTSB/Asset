#> asset:object/1108.waterfall/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1108/tick

#> Private
# @private
    #declare score_holder $Interval

# Interval
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $2 Const

# ダメージ
    execute if score $Interval Temporary matches 0 run function asset:object/1108.waterfall/tick/damage

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# リセット
    scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
