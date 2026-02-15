#> asset:object/2265.field_modify_manager/load
#
# Objectに利用するスコアボード等の初期化処理
#
# @within tag/function asset:object/load

#> 定義類はここに
# @within function asset:object/2265.field_modify_manager/**
    scoreboard objectives add 2265.AttackCount dummy
    scoreboard objectives add 2265.Period dummy
    scoreboard objectives add 2265.Progress.Current dummy
    scoreboard objectives add 2265.Progress.Max dummy
