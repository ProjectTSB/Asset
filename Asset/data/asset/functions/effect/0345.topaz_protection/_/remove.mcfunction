#> asset:effect/0345.topaz_protection/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:345} run function asset:effect/0345.topaz_protection/remove/