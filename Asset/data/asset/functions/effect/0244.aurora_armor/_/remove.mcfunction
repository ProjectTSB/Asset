#> asset:effect/0244.aurora_armor/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/re-given

execute if data storage asset:context {id:244} run function asset:effect/0244.aurora_armor/remove/
