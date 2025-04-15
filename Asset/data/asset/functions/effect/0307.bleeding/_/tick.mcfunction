#> asset:effect/0307.bleeding/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:307} run function asset:effect/0307.bleeding/tick/
