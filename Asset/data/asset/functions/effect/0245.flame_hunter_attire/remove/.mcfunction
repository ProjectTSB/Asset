#> asset:effect/0245.flame_hunter_attire/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0245.flame_hunter_attire/_/remove

# フルセット効果を削除
    execute if data storage asset:context {Stack:4} run function asset:effect/0245.flame_hunter_attire/fullset/dis_equip
