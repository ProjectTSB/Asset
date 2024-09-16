#> asset:effect/0249.oracle_physical_defense/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:249} run function asset:effect/0249.oracle_physical_defense/remove/