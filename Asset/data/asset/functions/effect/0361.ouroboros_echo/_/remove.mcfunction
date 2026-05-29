#> asset:effect/0361.ouroboros_echo/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:361} run function asset:effect/0361.ouroboros_echo/remove/
