#> asset:effect/0358.time_ticker_night/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:358} run function asset:effect/0358.time_ticker_night/tick/