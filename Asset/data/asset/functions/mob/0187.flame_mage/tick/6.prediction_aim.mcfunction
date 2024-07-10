#> asset:mob/0187.flame_mage/tick/6.prediction_aim
#
# 再帰でプレイヤーの予測位置を求める
#
# @input args
#       X: double
#       Z: double
#       ReachableRange: int
#
# @within function
#   asset:mob/0187.flame_mage/tick/5.predict_shoot
#   asset:mob/0187.flame_mage/tick/6.prediction_aim

# 移動先が魔法の到達範囲内なら目印用Markerを召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..$(ReachableRange)] as @p anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["PredictionMarker"]}

# 到達範囲を更新
    execute store result storage asset:temp Predict.ReachableRange int 1 run scoreboard players add $Speed Temporary 1

# 再帰処理
    scoreboard players add $Recursive Temporary 1
    $execute if score $Recursive Temporary matches ..20 positioned ~$(X) ~ ~$(Z) unless entity @s[distance=..$(ReachableRange)] run function asset:mob/0187.flame_mage/tick/6.prediction_aim with storage asset:temp Predict
