#> asset:mob/0340.twins_rubiel/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0340.twins_rubiel/**

# タイマー
    scoreboard objectives add 9G.AnimationTimer dummy
    scoreboard objectives add 9G.DamageCooldown dummy

# カウンター
    scoreboard objectives add 9G.ActionCount dummy
    scoreboard objectives add 9G.ActionCount.Feeling dummy
    scoreboard objectives add 9G.GuardCount dummy
    scoreboard objectives add 9G.CounterCount dummy
    scoreboard objectives add 9G.DownCount dummy

# 処理用
    scoreboard objectives add 9G.MoveVector.X dummy
    scoreboard objectives add 9G.MoveVector.Y dummy
    scoreboard objectives add 9G.MoveVector.Z dummy
