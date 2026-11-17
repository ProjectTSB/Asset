#> asset:effect/0404.blaze_barrage/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:404} run function asset:effect/0404.blaze_barrage/tick/