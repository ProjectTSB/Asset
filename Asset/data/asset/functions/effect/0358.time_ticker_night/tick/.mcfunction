#> asset:effect/0358.time_ticker_night/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0358.time_ticker_night/_/tick

# 昼になったら白昼バフに効果切り替え(エンド除く)
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run function asset:effect/0358.time_ticker_night/tick/transfer_effect.m {ID:357}

# エンドなら日食バフに切り替え
    execute if predicate lib:dimension/is_end run function asset:effect/0358.time_ticker_night/tick/transfer_effect.m {ID:359}
