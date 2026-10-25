#> asset:effect/0302.safety_check_complete/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:302} run function asset:effect/0302.safety_check_complete/remove/