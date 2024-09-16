#> asset:mob/0074.watermelon_bomber/tick/2.throw
#
# スイカを投げる
#
# @within function asset:mob/0074.watermelon_bomber/tick/1

#> Private
# @private
    #declare tag Predict

# スイカを投げる
# ハード以上の場合、偏差を確率で行う
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/60 run tag @s add Predict
    execute if entity @s[tag=!Predict] run function asset:mob/0074.watermelon_bomber/tick/3.facing_throw
    execute if entity @s[tag=Predict] run function asset:mob/0074.watermelon_bomber/tick/4.prediction_throw

# リセット
    tag @s[tag=Predict] remove Predict
