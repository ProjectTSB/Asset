#> asset:effect/0654.chicken_out/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:654} run function asset:effect/0654.chicken_out/remove/
