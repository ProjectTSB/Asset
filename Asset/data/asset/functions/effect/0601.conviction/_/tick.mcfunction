#> asset:effect/0601.conviction/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:601} run function asset:effect/0601.conviction/tick/