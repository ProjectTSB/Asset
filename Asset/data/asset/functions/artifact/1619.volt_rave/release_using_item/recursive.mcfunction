#> asset:artifact/1619.volt_rave/release_using_item/recursive
#
#
#
# @within function
#   asset:artifact/1619.volt_rave/release_using_item/3.main
#   asset:artifact/1619.volt_rave/release_using_item/recursive

# 演出
    execute if data storage api: Return.Effect{Stack:1} if predicate lib:random_pass_per/30 run particle happy_villager ^-1 ^ ^ 0.1 0.1 0.1 0 1 normal @a
    execute if data storage api: Return.Effect{Stack:2} if predicate lib:random_pass_per/50 run particle happy_villager ^-1 ^ ^ 0.2 0.2 0.2 0 1 normal @a

# (Range - 1)
    scoreboard players remove $Range Temporary 1

# Rangeが0ならreturn
    execute if score $Range Temporary matches ..0 run return fail

# 前方がブロックならreturn
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run return fail

# 敵がいればダメージを与える
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,dx=0,sort=random,limit=1] run return run function asset:artifact/1619.volt_rave/release_using_item/damage

# 再帰
    execute positioned ^ ^ ^0.5 run function asset:artifact/1619.volt_rave/release_using_item/recursive
