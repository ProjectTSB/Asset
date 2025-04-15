#> asset:effect/0014.receive_heal_debuff/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0014.receive_heal_debuff/_/re-given

# 補正を削除し付与する
    function asset:effect/0014.receive_heal_debuff/modifier/remove
    function asset:effect/0014.receive_heal_debuff/modifier/add
