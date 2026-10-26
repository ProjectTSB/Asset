#> asset:effect/0359.time_ticker_eclipse/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:359} run function asset:effect/0359.time_ticker_eclipse/tick/