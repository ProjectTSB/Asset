#> asset:effect/0372.gasoline/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:372} run function asset:effect/0372.gasoline/tick/