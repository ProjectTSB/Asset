#> asset:effect/0653.absolute_drive/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:653} run function asset:effect/0653.absolute_drive/remove/
