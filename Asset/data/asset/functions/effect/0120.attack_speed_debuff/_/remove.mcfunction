#> asset:effect/0120.attack_speed_debuff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:120} run function asset:effect/0120.attack_speed_debuff/remove/