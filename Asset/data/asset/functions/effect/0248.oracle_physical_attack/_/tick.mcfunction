#> asset:effect/0248.oracle_physical_attack/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:248} run function asset:effect/0248.oracle_physical_attack/tick/