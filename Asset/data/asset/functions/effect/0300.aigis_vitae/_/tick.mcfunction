#> asset:effect/0300.aigis_vitae/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:300} run function asset:effect/0300.aigis_vitae/tick/