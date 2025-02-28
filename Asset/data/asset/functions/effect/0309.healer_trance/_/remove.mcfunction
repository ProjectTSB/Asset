#> asset:effect/0309.healer_trance/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:309} run function asset:effect/0309.healer_trance/remove/
