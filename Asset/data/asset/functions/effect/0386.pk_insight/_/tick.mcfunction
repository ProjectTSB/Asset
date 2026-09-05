#> asset:effect/0386.pk_insight/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:386} run function asset:effect/0386.pk_insight/tick/