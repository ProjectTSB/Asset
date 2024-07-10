#> asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon
#
# スイカを投げる
#
# @within function asset:mob/0074.watermelon_bomber/tick/2.tick

#> Private
# @private
    #declare tag 22.Already
    #declare tag Predict

# スイカを投げる
# ハード以上の場合、プレイヤーが一定以上離れていれば偏差を確率で行う
    execute if predicate api:global_vars/difficulty/min/hard unless entity @p[distance=..10] if predicate lib:random_pass_per/60 run tag @s add Predict
    execute if entity @s[tag=!Predict] run function asset:mob/0074.watermelon_bomber/tick/4.facing_throw
    execute if entity @s[tag=Predict] run function asset:mob/0074.watermelon_bomber/tick/5.prediction_throw

# リセット
    tag @s[tag=Predict] remove Predict
