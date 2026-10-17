#> asset:effect/0358.time_ticker_night/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:358} run function asset:effect/0358.time_ticker_night/remove/