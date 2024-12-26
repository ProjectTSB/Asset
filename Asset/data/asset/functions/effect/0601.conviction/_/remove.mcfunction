#> asset:effect/0601.conviction/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:601} run function asset:effect/0601.conviction/remove/