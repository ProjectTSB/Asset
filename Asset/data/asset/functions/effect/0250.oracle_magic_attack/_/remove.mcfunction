#> asset:effect/0250.oracle_magic_attack/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:250} run function asset:effect/0250.oracle_magic_attack/remove/