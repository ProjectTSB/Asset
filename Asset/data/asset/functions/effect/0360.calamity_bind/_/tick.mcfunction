#> asset:effect/0360.calamity_bind/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:360} run function asset:effect/0360.calamity_bind/tick/