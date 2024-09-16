#> asset:effect/0250.oracle_magic_attack/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:250} run function asset:effect/0250.oracle_magic_attack/tick/