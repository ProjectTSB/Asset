#> asset:effect/0247.great_demon_armor/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0247.great_demon_armor/_/re-given

# フルセット効果を付与
    execute unless data storage asset:context PrevField{PrevStack:4} if data storage asset:context {Stack:4} run function asset:effect/0247.great_demon_armor/fullset/equip

# フルセット効果の引継ぎ
    execute if data storage asset:context PrevField{PrevStack:4} run data modify storage asset:context this.Tick set from storage asset:context PrevField.Tick

# スタックを記録
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
