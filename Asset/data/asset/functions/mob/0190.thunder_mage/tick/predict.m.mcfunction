#> asset:mob/0190.thunder_mage/tick/predict.m
#
# @input args:
#        X: double
#        Z: double
#
# @within function asset:mob/0190.thunder_mage/tick/predict_attack

# IDはもう設定してあるのでAPI叩くだけ
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..20] run function asset:mob/0190.thunder_mage/tick/summon
