#> asset:effect/0021.mp_regen_debuff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:21} run function asset:effect/0021.mp_regen_debuff/remove/
