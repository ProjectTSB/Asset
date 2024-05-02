#> asset:effect/0249.oracle_physical_defense/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:249} run function asset:effect/0249.oracle_physical_defense/tick/