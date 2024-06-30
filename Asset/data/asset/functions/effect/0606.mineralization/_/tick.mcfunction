#> asset:effect/0606.mineralization/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:606} run function asset:effect/0606.mineralization/tick/