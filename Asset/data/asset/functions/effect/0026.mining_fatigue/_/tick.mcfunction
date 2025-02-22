#> asset:effect/0026.mining_fatigue/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:26} run function asset:effect/0026.mining_fatigue/tick/