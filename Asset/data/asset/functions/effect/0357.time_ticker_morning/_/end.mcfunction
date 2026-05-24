#> asset:effect/0357.time_ticker_morning/_/end
#
# Effectの効果の終了時に実行されるfunction
#
# @within tag/function asset:effect/end

execute if data storage asset:context {id:357} run function asset:effect/0357.time_ticker_morning/end/
