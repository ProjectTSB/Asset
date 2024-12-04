#> asset:effect/0232.soul_fire/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0232.soul_fire/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0232.soul_fire/fullset/dis_equip
