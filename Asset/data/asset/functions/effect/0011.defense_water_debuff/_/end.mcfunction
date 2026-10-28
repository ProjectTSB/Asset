#> asset:effect/0011.defense_water_debuff/_/end
#
# Effectの効果の終了時に実行されるfunction
#
# @within tag/function asset:effect/end

execute if data storage asset:context {id:11} run function asset:effect/0011.defense_water_debuff/end/
