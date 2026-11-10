#> asset:effect/0437.phoenix_shield/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:437} run function asset:effect/0437.phoenix_shield/remove/
