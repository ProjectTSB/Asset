#> asset:effect/0203.secret_meat/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:203} run function asset:effect/0203.secret_meat/remove/