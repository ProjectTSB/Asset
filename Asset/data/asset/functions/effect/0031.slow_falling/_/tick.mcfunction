#> asset:effect/0031.slow_falling/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:31} run function asset:effect/0031.slow_falling/tick/