#> asset:effect/0119.armor_toughness_debuff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:119} run function asset:effect/0119.armor_toughness_debuff/remove/