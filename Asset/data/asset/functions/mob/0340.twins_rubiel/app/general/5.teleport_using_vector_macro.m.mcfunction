#> asset:mob/0340.twins_rubiel/app/general/5.teleport_using_vector_macro.m
# @input
#     X: float: x軸方向の移動ベクトル
#     Y: float: y軸方向の移動ベクトル
#     Z: float: z軸方向の移動ベクトル
#
# 汎用処理 スコアのベクトルを利用して移動する
#
# @within asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector

# 移動
    $tp @s ~$(X) ~$(Y) ~$(Z) ~ ~
