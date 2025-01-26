#> asset:effect/0051.attack_base_debuff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:51} run function asset:effect/0051.attack_base_debuff/remove/