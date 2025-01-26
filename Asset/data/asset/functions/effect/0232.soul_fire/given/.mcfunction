#> asset:effect/0232.soul_fire/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0232.soul_fire/_/given

# フルセット効果を付与
    execute if data storage asset:context {Stack:4} run function asset:effect/0232.soul_fire/fullset/equip

# スタックを記録
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
