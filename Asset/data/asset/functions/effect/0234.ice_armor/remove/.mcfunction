#> asset:effect/0234.ice_armor/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0234.ice_armor/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0234.ice_armor/fullset/dis_equip

# スタックを記録
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
