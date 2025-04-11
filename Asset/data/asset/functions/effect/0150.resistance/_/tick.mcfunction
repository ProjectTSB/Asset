#> asset:effect/0150.resistance/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:150} run function asset:effect/0150.resistance/tick/