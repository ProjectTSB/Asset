#> asset:effect/0240.bless_of_deep_sea_coral/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0240.bless_of_deep_sea_coral/_/given

# フルセット効果を付与
    execute if data storage asset:context {Stack:4} run function asset:effect/0240.bless_of_deep_sea_coral/fullset/equip

# スタックを記録
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
