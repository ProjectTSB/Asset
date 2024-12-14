#> asset:effect/0201.magic_shield/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:201} run function asset:effect/0201.magic_shield/remove/