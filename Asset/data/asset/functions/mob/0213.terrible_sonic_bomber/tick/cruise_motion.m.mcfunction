#> asset:mob/0213.terrible_sonic_bomber/tick/cruise_motion.m
#
# @input args
#   x
#   y
#   z
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/cruise_motion

#   目的地に到達したか確認
#   目的座標を実行点にして半径10にいるか確認
#     到達していない場合
#         目標座標の角度と自機の角度を比較
#         ずれていた場合修正
#     到達していた場合
#         目標座標を更新
