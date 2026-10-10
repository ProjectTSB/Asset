#> asset:effect/0357.time_ticker_day/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0357.time_ticker_day/_/tick

# 夜になったら月夜バフに切り替え(エンド除く)
    execute if predicate lib:is_night unless predicate lib:dimension/is_end run function asset:effect/0357.time_ticker_day/tick/transfer_effect.m {ID:358}

# エンドなら日食バフに切り替え
    execute if predicate lib:dimension/is_end run function asset:effect/0357.time_ticker_day/tick/transfer_effect.m {ID:359}
