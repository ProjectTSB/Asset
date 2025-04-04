#> asset:mob/0060.self_destructor/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/60/tick

# 強制カウント進行
    # 燃えてる場合爆発
        execute if predicate lib:is_burning run tag @s add 1O.ForceCountProgress
    # 信号のあるレッドストーンパウダーに触れると爆発
        execute if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] run tag @s add 1O.ForceCountProgress
    # 強制爆発処理
        execute if entity @s[tag=1O.ForceCountProgress] run function asset:mob/0060.self_destructor/tick/force_explode
    # リセット
        tag @s remove 1O.ForceCountProgress

# 自爆
    # 爆破待機
        execute if data storage asset:context this{Countdown:0} run function asset:mob/0060.self_destructor/tick/waiting_explode

    # 演出
        execute if entity @s[scores={1O.ExplodeFuse=1..39}] run particle smoke ~ ~1.2 ~ 0.4 0.5 0.4 0 6 normal @a

    # 爆破
        execute if entity @s[scores={1O.ExplodeFuse=40..}] run function asset:mob/0060.self_destructor/tick/self-desruct
