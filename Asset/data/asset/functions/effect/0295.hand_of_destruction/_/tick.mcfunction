#> asset:effect/0295.hand_of_destruction/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:295} run function asset:effect/0295.hand_of_destruction/tick/
