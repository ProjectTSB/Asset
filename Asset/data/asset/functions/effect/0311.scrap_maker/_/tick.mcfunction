#> asset:effect/0311.scrap_maker/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:311} run function asset:effect/0311.scrap_maker/tick/