#> asset:effect/0262.catastrophe/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0262.catastrophe/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0262.catastrophe/fullset/dis_equip
