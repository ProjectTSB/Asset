#> asset:effect/0117.move_speed_debuff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:117} run function asset:effect/0117.move_speed_debuff/remove/
