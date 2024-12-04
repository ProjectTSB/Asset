#> asset:effect/0232.soul_fire/_/tick
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:232} run function asset:effect/0232.soul_fire/tick/
