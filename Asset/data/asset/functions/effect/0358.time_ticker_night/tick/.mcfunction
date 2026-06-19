#> asset:effect/0358.time_ticker_night/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0358.time_ticker_night/_/tick

# エフェクトを付与した直後に、効果時間を0にするとendが呼び出されないバグが起きているため、一時的に効果時間を0にする際はmodifier/removeを呼び出す (修正後は要削除)

# 昼になったら白昼バフに効果切り替え(エンド除く)
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run function asset:effect/0358.time_ticker_night/tick/transfer_effect.m {ID:357}
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run data modify storage asset:context Duration set value 0
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run function asset:effect/0358.time_ticker_night/modifier/remove

# エンドなら日食バフに切り替え
    execute if predicate lib:dimension/is_end run function asset:effect/0358.time_ticker_night/tick/transfer_effect.m {ID:359}
    execute if predicate lib:dimension/is_end run data modify storage asset:context Duration set value 0
    execute if predicate lib:dimension/is_end run function asset:effect/0358.time_ticker_night/modifier/remove
