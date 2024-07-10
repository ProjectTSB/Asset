#> asset:mob/0074.watermelon_bomber/tick/6.prediction_aim
#
# 偏差の処理
#
# @within function
#   asset:mob/0074.watermelon_bomber/tick/5.prediction_throw
#   asset:mob/0074.watermelon_bomber/tick/6.prediction_aim

# 移動先が魔法の到達範囲内なら目印用Markerを召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..$(ReachableRange)] as @p anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["PredictionMarker"]}

# 到達範囲を更新
    execute store result storage asset:temp Predict.ReachableRange int 1 run scoreboard players add $Speed Temporary 1

# 再帰処理
    scoreboard players add $Recursive Temporary 1
    $execute if score $Recursive Temporary matches ..20 positioned ~$(X) ~ ~$(Z) unless entity @s[distance=..$(ReachableRange)] run function asset:mob/0074.watermelon_bomber/tick/6.prediction_aim with storage asset:temp Predict
