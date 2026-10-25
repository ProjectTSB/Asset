#> asset:object/1217.interferable_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1217/tick

# 強化状態の処理
    execute if entity @s[tag=1217.Reinforced] run function asset:object/1217.interferable_slash/tick/reinforced

# 演出
    particle dust 0.3 0.5 1.0 0.5 ^-0.75 ^ ^ 0.1 0 0.1 0 4
    particle dust 0.3 0.5 1.0 0.5 ^0.75 ^ ^ 0.1 0 0.1 0 4

# super.tick
    function asset:object/super.tick
