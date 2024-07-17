#> asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/3.predict_point1.m
#
# 偏差の処理1
#
# @input args:
#        X: double
#        Z: double
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/2.get_vector

# 偏差位置で5回実行
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/4.predict_point2
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/4.predict_point2
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/4.predict_point2
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/4.predict_point2
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/4.predict_point2
