#> asset:effect/0030.wither/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:30} run function asset:effect/0030.wither/tick/