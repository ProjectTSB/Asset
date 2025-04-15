#> asset:effect/0305.poison_of_flowgun/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:305} run function asset:effect/0305.poison_of_flowgun/tick/