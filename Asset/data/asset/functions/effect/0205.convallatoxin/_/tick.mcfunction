#> asset:effect/0205.convallatoxin/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:205} run function asset:effect/0205.convallatoxin/tick/
