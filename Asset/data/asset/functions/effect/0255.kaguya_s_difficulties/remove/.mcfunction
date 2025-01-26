#> asset:effect/0255.kaguya_s_difficulties/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0255.kaguya_s_difficulties/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0255.kaguya_s_difficulties/fullset/dis_equip
