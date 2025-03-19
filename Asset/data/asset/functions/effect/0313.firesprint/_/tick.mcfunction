#> asset:effect/0313.firesprint/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:313} run function asset:effect/0313.firesprint/tick/
