#> asset:effect/0236.solitariness/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:236} run function asset:effect/0236.solitariness/tick/
