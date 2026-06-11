#> asset:object/1165.bubble_spreader/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/recursive

# 演出
# 水色の芯を描きつつ、その周囲に少しだけ泡を散らす
    particle minecraft:dust_color_transition 0.18 0.45 0.78 1 1.0 1.0 1.0 ~ ~ ~ 0 0 0 0 1
    #particle minecraft:dust 0.4 0.8 1.0 1.0 ~ ~ ~ 0 0 0 0 1
    particle minecraft:bubble_pop ~ ~ ~ 0.1 0.1 0.1 0 1
    #particle minecraft:dust 0.4 0.8 1.0 1.0 ^ ^ ^0.25 0 0 0 0 1
    particle minecraft:dust_color_transition 0.18 0.45 0.78 1 1.0 1.0 1.0 ^ ^ ^0.25 0 0 0 0 1
    particle minecraft:bubble_pop ^ ^ ^0.25 0.1 0.1 0.1 0 1
