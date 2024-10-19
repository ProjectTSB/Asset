#> asset:effect/0203.secret_meat/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:203} run function asset:effect/0203.secret_meat/tick/