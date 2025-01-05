#> asset:effect/0608.sinking/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:608} run function asset:effect/0608.sinking/tick/