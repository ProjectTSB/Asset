#> asset:effect/0256.the_great_sage_s_attire/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0256.the_great_sage_s_attire/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0256.the_great_sage_s_attire/fullset/dis_equip
