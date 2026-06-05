#> asset:effect/0363.barrier10/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:363} run function asset:effect/0363.barrier10/remove/
