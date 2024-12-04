#> asset:effect/0243.oblivious_snow/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0243.oblivious_snow/_/given

# フルセット効果を付与
    execute if data storage asset:context {Stack:4} run function asset:effect/0243.oblivious_snow/fullset/equip

# スタックを記録
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
