#> asset:effect/0116.kb_resist_debuff/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:116} run function asset:effect/0116.kb_resist_debuff/remove/