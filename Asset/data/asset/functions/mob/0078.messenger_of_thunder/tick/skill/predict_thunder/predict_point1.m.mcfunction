#> asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point1.m
#
# 偏差の処理1
#
# @input args:
#        X: double
#        Z: double
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/get_vector

# 偏差位置で実行
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[gamemode=!spectator,distance=..50] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point2
