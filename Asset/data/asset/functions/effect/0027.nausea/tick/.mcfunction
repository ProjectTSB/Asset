#> asset:effect/0027.nausea/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0027.nausea/_/tick

# 吐き気を付与
# 付与するDurationが短いと画面が歪まないため、長めのDurationを設定する
    effect give @s nausea 5 0 true
