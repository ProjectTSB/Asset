#> asset:effect/0621.loyalty_shield/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:621} run function asset:effect/0621.loyalty_shield/tick/