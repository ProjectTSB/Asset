#> asset:object/1006.terra_shot/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1006/kill

# 演出
    particle minecraft:happy_villager ^ ^ ^-1 0 0 0 1 1 force
    particle minecraft:crit ^ ^ ^-1 0 0 0 0.25 5

# 消滅
    kill @s
