#> asset:effect/0359.time_ticker_eclipse/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0359.time_ticker_eclipse/_/tick

# エンドでなければバフを解除し、昼/夜バフに引継ぎ
    execute unless predicate lib:dimension/is_end run function asset:effect/0359.time_ticker_eclipse/tick/transfer_effect
