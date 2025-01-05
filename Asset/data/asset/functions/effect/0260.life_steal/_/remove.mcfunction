#> asset:effect/0260.life_steal/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:260} run function asset:effect/0260.life_steal/remove/