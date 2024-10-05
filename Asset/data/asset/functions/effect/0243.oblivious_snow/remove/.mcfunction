#> asset:effect/0243.oblivious_snow/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0243.oblivious_snow/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0243.oblivious_snow/fullset/dis_equip
