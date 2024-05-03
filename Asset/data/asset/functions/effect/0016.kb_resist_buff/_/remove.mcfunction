#> asset:effect/0016.kb_resist_buff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:16} run function asset:effect/0016.kb_resist_buff/remove/