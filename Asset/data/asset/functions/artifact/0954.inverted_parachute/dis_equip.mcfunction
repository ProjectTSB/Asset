#> asset:artifact/0954.inverted_parachute/dis_equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/954/dis_equip

# 浮遊を解除する
    execute if predicate asset:artifact/0954.inverted_parachute/levitation run effect clear @s levitation
