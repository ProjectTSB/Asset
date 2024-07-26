#> asset:effect/0251.oracle_magic_defense/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:251} run function asset:effect/0251.oracle_magic_defense/tick/