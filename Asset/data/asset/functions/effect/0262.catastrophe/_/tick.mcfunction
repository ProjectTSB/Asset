#> asset:effect/0262.catastrophe/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:262} run function asset:effect/0262.catastrophe/tick/