#> asset:effect/0192.jump_boost/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:192} run function asset:effect/0192.jump_boost/tick/