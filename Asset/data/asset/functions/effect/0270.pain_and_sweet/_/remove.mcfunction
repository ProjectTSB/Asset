#> asset:effect/0270.pain_and_sweet/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:270} run function asset:effect/0270.pain_and_sweet/remove/
