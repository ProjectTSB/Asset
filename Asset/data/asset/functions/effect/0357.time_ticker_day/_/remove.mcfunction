#> asset:effect/0357.time_ticker_day/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:357} run function asset:effect/0357.time_ticker_day/remove/
