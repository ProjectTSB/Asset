#> asset:effect/0190.fall_resistance/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:190} run function asset:effect/0190.fall_resistance/remove/
