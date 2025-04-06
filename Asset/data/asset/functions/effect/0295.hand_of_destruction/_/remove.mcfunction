#> asset:effect/0295.hand_of_destruction/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:295} run function asset:effect/0295.hand_of_destruction/remove/
