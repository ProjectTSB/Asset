#> asset:effect/0011.defense_water_debuff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:11} run function asset:effect/0011.defense_water_debuff/remove/
