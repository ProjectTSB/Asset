#> asset:effect/0384.ninjas_mindset/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0384.ninjas_mindset/_/given

# フルセット効果付与
    execute if data storage asset:context {Stack:4} run function asset:effect/0384.ninjas_mindset/fullset/equip

# this.PrevStackに保存
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
