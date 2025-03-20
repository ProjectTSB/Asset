#> asset:effect/0313.firesprint/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:313} run function asset:effect/0313.firesprint/remove/
