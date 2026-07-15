#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.set_y.m
#
#
#
# @within function
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/0
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/select_target

# 使用地点のy座標周辺でターゲットを選択する
    $execute positioned ~ $(Y) ~ run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.select_target
