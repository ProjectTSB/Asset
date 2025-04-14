#> asset:effect/0653.absolute_drive/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:653} run function asset:effect/0653.absolute_drive/tick/
