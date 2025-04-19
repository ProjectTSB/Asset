#> asset:effect/0327.honey_poison/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:327} run function asset:effect/0327.honey_poison/tick/
