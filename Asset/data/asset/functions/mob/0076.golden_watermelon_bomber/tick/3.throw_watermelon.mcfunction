#> asset:mob/0076.golden_watermelon_bomber/tick/3.throw_watermelon
#
#
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/2.tick

#> Private
# @private
    #declare tag Predict

# スイカを投げる
# ハード以上の場合、偏差を確率で行う
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/60 run tag @s add Predict
    execute if entity @s[tag=!Predict] run function asset:mob/0076.golden_watermelon_bomber/tick/4.facing_throw
    execute if entity @s[tag=Predict] run function asset:mob/0076.golden_watermelon_bomber/tick/5.prediction_throw

# リセット
    tag @s[tag=Predict] remove Predict
    item replace entity @s weapon.mainhand with melon{CustomModelData:20023,Enchantments:[{}]}
