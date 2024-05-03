#> asset:effect/0015.max_health_buff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:15} run function asset:effect/0015.max_health_buff/remove/