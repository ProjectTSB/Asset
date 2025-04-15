#> asset:effect/0314.quick_charge_mp/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:314} run function asset:effect/0314.quick_charge_mp/tick/