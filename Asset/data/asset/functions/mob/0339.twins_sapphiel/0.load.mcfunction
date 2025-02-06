#> asset:mob/0339.twins_sapphiel/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0339.twins_sapphiel/**
    scoreboard objectives add 9F.AnimationTimer dummy
    scoreboard objectives add 9F.DamageCooldown dummy
    scoreboard objectives add 9F.ActionCount dummy
    scoreboard objectives add 9F.GuardCount dummy
    scoreboard objectives add 9F.CounterCount dummy
    scoreboard objectives add 9F.DownCount dummy
    scoreboard objectives add 9F.BulletCount.Hg dummy
    scoreboard objectives add 9F.MoveVector.X dummy
    scoreboard objectives add 9F.MoveVector.Y dummy
    scoreboard objectives add 9F.MoveVector.Z dummy

# タイマー 9F.AnimationTimer, 9F.DamageCooldown
# カウンター 9F.ActionCount, 9F.GuardCount, 9F.CounterCount, 9F.DownCount, 9F.BulletCount.Hg
# 処理用 9F.MoveVector.X, 9F.MoveVector.Y, 9F.MoveVector.Z
