#> asset:effect/0244.aurora_armor/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0244.aurora_armor/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0244.aurora_armor/fullset/dis_equip
