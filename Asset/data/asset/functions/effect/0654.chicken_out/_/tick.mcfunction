#> asset:effect/0654.chicken_out/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:654} run function asset:effect/0654.chicken_out/tick/
