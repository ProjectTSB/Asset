#> asset:effect/0408.fueling/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:408} run function asset:effect/0408.fueling/tick/