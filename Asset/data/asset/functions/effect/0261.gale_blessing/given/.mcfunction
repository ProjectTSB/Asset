#> asset:effect/0261.gale_blessing/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0261.gale_blessing/_/given

# 補正を付与する
    execute unless predicate lib:in_battle run function asset:effect/0261.gale_blessing/modfier/add
