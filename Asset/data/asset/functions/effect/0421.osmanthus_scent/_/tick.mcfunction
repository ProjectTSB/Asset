#> asset:effect/0421.osmanthus_scent/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:421} run function asset:effect/0421.osmanthus_scent/tick/
