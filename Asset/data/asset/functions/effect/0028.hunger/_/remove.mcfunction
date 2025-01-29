#> asset:effect/0028.hunger/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:28} run function asset:effect/0028.hunger/remove/