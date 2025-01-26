#> asset:effect/0270.honey_regeneration/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:270} run function asset:effect/0270.honey_regeneration/tick/
