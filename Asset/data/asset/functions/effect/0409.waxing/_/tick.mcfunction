#> asset:effect/0409.waxing/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:409} run function asset:effect/0409.waxing/tick/