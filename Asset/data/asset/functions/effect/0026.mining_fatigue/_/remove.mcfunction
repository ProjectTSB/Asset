#> asset:effect/0026.mining_fatigue/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:26} run function asset:effect/0026.mining_fatigue/remove/