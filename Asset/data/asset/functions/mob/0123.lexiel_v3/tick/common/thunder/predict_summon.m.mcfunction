#> asset:mob/0123.lexiel_v3/tick/common/thunder/predict_summon.m
#
# @input args:
#        X: double
#        Z: double
#
# @within function asset:mob/0123.lexiel_v3/tick/common/thunder/predict

# 偏差撃ち
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..60] run function asset:mob/0123.lexiel_v3/tick/common/thunder/summon
