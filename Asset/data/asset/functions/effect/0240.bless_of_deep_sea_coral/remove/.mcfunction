#> asset:effect/0240.bless_of_deep_sea_coral/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0240.bless_of_deep_sea_coral/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0240.bless_of_deep_sea_coral/fullset/dis_equip
