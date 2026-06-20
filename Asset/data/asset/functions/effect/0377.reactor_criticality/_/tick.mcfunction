#> asset:effect/0377.reactor_criticality/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:377} run function asset:effect/0377.reactor_criticality/tick/