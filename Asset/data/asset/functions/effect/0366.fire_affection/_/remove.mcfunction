#> asset:effect/0366.fire_affection/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:366} run function asset:effect/0366.fire_affection/remove/
