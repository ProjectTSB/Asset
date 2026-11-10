#> asset:effect/0433.coreflame/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:433} run function asset:effect/0433.coreflame/tick/
