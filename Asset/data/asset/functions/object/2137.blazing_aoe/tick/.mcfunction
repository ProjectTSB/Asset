#> asset:object/2137.blazing_aoe/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2137/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 数tickごとに攻撃判定とパーティクルが出現
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 run function asset:object/2137.blazing_aoe/tick/aoe

# リセット
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]
