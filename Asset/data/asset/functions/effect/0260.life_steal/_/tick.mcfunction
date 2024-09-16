#> asset:effect/0260.life_steal/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:260} run function asset:effect/0260.life_steal/tick/