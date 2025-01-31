#> asset:effect/0615.wave_curse/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:615} run function asset:effect/0615.wave_curse/tick/
