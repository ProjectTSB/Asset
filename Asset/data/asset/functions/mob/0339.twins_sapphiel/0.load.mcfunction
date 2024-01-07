#> asset:mob/0339.twins_sapphiel/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0339.twins_sapphiel/**

# タイマー
    scoreboard objectives add 9F.AnimationTimer dummy
    scoreboard objectives add 9F.DamageCooldown dummy

# カウンター
    scoreboard objectives add 9F.ActionCount dummy
    scoreboard objectives add 9F.BulletCount.Hg dummy

# 処理用
    scoreboard objectives add 9F.MoveVector.X dummy
    scoreboard objectives add 9F.MoveVector.Y dummy
    scoreboard objectives add 9F.MoveVector.Z dummy
