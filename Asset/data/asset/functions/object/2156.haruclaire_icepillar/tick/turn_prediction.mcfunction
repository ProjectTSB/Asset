#> asset:object/2156.haruclaire_icepillar/tick/turn_prediction
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 回転
    execute unless entity @s[tag=2156.Right] on passengers if entity @s[tag=2156.Prediction.Turn] at @s run tp @s ~ ~ ~ ~-2.3 ~
    execute if entity @s[tag=2156.Right] on passengers if entity @s[tag=2156.Prediction.Turn] at @s run tp @s ~ ~ ~ ~2.3 ~
