#> asset:effect/0355.heart_gap/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:355} run function asset:effect/0355.heart_gap/remove/
