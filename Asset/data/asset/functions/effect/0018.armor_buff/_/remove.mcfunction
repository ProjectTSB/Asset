#> asset:effect/0018.armor_buff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:18} run function asset:effect/0018.armor_buff/remove/