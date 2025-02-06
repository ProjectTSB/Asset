#> asset:mob/0327.eclael/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0327.eclael/**
    scoreboard objectives add 93.AnimationTimer dummy
    scoreboard objectives add 93.SubTimer dummy
    scoreboard objectives add 93.ActionCount dummy
    scoreboard objectives add 93.DamageIntervalTimer dummy
    scoreboard objectives add 93.DamageTimer dummy
    scoreboard objectives add 93.TempCount dummy

    # スコアが全体定義になってしまっていたためコメントだけ下に移す
    # 処理用タイマー 93.AnimationTimer, 93.SubTimer
    # 行動回数 93.ActionCount
    # 怯み処理用 93.DamageIntervalTimer, 93.DamageTimer
    # 処理用カウンター 93.TempCount
