#> asset:effect/0220.dream_of_burning_butterfly/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:220} run function asset:effect/0220.dream_of_burning_butterfly/tick/
