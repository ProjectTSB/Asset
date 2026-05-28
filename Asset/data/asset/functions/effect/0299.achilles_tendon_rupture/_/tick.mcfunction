#> asset:effect/0299.achilles_tendon_rupture/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:299} run function asset:effect/0299.achilles_tendon_rupture/tick/