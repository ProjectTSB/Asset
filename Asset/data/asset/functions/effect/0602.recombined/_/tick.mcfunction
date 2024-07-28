#> asset:effect/0602.recombined/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:602} run function asset:effect/0602.recombined/tick/