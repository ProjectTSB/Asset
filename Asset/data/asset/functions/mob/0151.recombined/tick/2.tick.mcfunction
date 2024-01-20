#> asset:mob/0151.recombined/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0151.recombined/tick/1.trigger

# ハード以上で一定確率で実行
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/4 run function asset:mob/0151.recombined/tick/3.random_speed