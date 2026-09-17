#> asset:effect/0394.charge_of_volt_rave/end/recursive
#
#
#
# @within function
#   asset:effect/0394.charge_of_volt_rave/end/
#   asset:effect/0394.charge_of_volt_rave/end/recursive

# 演出
    execute if data storage asset:context this{IsFullCharge:false} if predicate lib:random_pass_per/30 run particle happy_villager ^-1 ^ ^ 0.1 0.1 0.1 0 1 normal @a
    execute if data storage asset:context this{IsFullCharge: true} if predicate lib:random_pass_per/50 run particle happy_villager ^-1 ^ ^ 0.2 0.2 0.2 0 1 normal @a

# (Range - 1)
    execute store result storage asset:context this.Range int 0.9999999999 run data get storage asset:context this.Range

# Rangeが0ならreturn
    execute if data storage asset:context this{Range:0} run return fail

# 前方がブロックならreturn
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run return fail

# 敵がいればダメージを与える
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,dx=0,sort=random,limit=1] run return run function asset:effect/0394.charge_of_volt_rave/end/damage

# 再帰
    execute positioned ^ ^ ^0.5 run function asset:effect/0394.charge_of_volt_rave/end/recursive
