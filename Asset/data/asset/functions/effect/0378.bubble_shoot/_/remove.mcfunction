#> asset:effect/0378.bubble_shoot/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:378} run function asset:effect/0378.bubble_shoot/remove/
