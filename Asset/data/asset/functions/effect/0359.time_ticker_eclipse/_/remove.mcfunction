#> asset:effect/0359.time_ticker_eclipse/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:359} run function asset:effect/0359.time_ticker_eclipse/remove/