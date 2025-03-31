#> asset:object/2156.haruclaire_icepillar/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 演出
    particle flash ~ ~ ~ 0 0 0 0 1
    particle dust 0.902 0.902 1 3 ~ ~ ~ 1 1 1 0 10
    particle dust 0.635 0.898 1 3 ~ ~ ~ 1 1 1 0 10

# 消去
    execute on passengers run kill @s
    kill @s
