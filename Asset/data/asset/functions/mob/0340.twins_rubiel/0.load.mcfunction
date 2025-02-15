#> asset:mob/0340.twins_rubiel/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0340.twins_rubiel/**
    scoreboard objectives add 9G.AnimationTimer dummy
    scoreboard objectives add 9G.DamageCooldown dummy
    scoreboard objectives add 9G.ActionCount dummy
    scoreboard objectives add 9G.ActionCount.Feeling dummy
    scoreboard objectives add 9G.GuardCount dummy
    scoreboard objectives add 9G.CounterCount dummy
    scoreboard objectives add 9G.DownCount dummy
    scoreboard objectives add 9G.MoveVector.X dummy
    scoreboard objectives add 9G.MoveVector.Y dummy
    scoreboard objectives add 9G.MoveVector.Z dummy
    scoreboard objectives add 9G.MoodPoint dummy

# タイマー 9G.AnimationTimer, 9G.DamageCooldown
# カウンター 9G.ActionCount, 9G.ActionCount.Feeling, 9G.GuardCount, 9G.CounterCount, 9G.DownCount
# 処理用 9G.MoveVector.X, 9G.MoveVector.Y, 9G.MoveVector.Z, 9G.MoodPoint
