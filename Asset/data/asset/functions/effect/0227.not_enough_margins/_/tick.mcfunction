#> asset:effect/0227.not_enough_margins/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:227} run function asset:effect/0227.not_enough_margins/tick/