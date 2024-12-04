#> asset:effect/0238.raimei/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0238.raimei/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0238.raimei/fullset/dis_equip

# スタックを記録
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
