#> asset:effect/0020.attack_speed_buff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:20} run function asset:effect/0020.attack_speed_buff/remove/