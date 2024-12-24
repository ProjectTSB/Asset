#> asset:object/2148.blazing_inferno_dead/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2148/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 4tickごとに爆発
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score @s General.Object.Tick matches 20.. if score $Interval Temporary matches 0 run function asset:object/2148.blazing_inferno_dead/tick/explosion

# パーティクル
    particle minecraft:large_smoke ~ ~1.5 ~ 0.5 0.5 0.5 0 1 force @a[distance=..32]
    particle minecraft:flame ~ ~1.5 ~ 0.5 0.5 0.5 0.05 1 force @a[distance=..32]

# シメの大爆発
    execute if score @s General.Object.Tick matches 60 run function asset:object/2148.blazing_inferno_dead/tick/end

# リセット
    scoreboard players reset $Interval Temporary
