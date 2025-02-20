#> asset:effect/0303.celestial_target/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:303} run function asset:effect/0303.celestial_target/tick/