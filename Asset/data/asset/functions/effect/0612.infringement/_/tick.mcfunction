#> asset:effect/0612.infringement/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:612} run function asset:effect/0612.infringement/tick/