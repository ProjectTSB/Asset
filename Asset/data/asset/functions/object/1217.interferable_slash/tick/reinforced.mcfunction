#> asset:object/1217.interferable_slash/tick/reinforced
#
#
#
# @within function asset:object/1217.interferable_slash/tick/

# タイマー減算、0になったら解除
    execute store result storage asset:context this.ReinforcementTimer int 0.9999999999 run data get storage asset:context this.ReinforcementTimer
    execute if data storage asset:context this{ReinforcementTimer:0} run data modify entity @s item.tag.CustomModelData set value 20671
    execute if data storage asset:context this{ReinforcementTimer:0} run tag @s remove 1217.Reinforced

# 演出
    particle dust 0.8 1.0 1.0 0.3 ^-0.75 ^ ^ 0.2 0 0.2 0 15
    particle dust 0.8 1.0 1.0 0.3 ^0.75 ^ ^ 0.2 0 0.2 0 15
    particle dust 0.1 0.3 1.0 0.5 ~ ~ ~ 0.4 0 0.4 0 10
