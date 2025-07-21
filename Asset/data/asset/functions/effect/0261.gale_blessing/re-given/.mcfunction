#> asset:effect/0261.gale_blessing/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0261.gale_blessing/_/re-given

# 補正を削除し、再度付与
    function asset:effect/0261.gale_blessing/modfier/remove
    execute unless predicate lib:in_battle run function asset:effect/0261.gale_blessing/modfier/add
