#> asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector.m
# @input
#     X: float: x軸方向の移動ベクトル
#     Y: float: y軸方向の移動ベクトル
#     Z: float: z軸方向の移動ベクトル
#
# 汎用処理 ベクトルを利用して移動する
#
# @within asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector

# 移動
    $execute positioned ~$(X) ~$(Y) ~$(Z) run tp @s ~ ~ ~
