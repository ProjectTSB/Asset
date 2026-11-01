#> asset:effect/0400.dual_rhythm_boost/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:400} run function asset:effect/0400.dual_rhythm_boost/remove/
