#> asset:mob/0151.recombined/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0151.recombined/tick/1.trigger

# 一定確率で自身の速度をランダムに変更
    execute if predicate lib:random_pass_per/4 run function asset:mob/0151.recombined/tick/3.random_speed