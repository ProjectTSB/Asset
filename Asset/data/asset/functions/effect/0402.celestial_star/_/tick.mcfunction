#> asset:effect/0402.celestial_star/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:402} run function asset:effect/0402.celestial_star/tick/
