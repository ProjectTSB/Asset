#> asset:effect/0384.ninjas_mindset/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0384.ninjas_mindset/_/re-given

# フルセット効果解除
    execute if data storage asset:context PreviousField{PrevStack:4} unless data storage asset:context {Stack:4} run function asset:effect/0384.ninjas_mindset/fullset/dis_equip

# フルセット効果付与
    execute unless data storage asset:context PreviousField{PrevStack:4} if data storage asset:context {Stack:4} run function asset:effect/0384.ninjas_mindset/fullset/equip

# this.PrevStackに保存
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
