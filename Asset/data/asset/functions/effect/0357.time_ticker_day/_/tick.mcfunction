#> asset:effect/0357.time_ticker_day/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:357} run function asset:effect/0357.time_ticker_day/tick/
