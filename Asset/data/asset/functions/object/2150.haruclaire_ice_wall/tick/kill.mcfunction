#> asset:object/2150.haruclaire_ice_wall/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2150.haruclaire_ice_wall/tick/

# 演出
    particle flash ~ ~2 ~ 0 0 0 0 1
    particle dust 0.902 0.902 1 3 ~ ~2 ~ 1 1 1 0 3
    particle dust 0.635 0.898 1 3 ~ ~1 ~ 1 1 1 0 3

# 消滅
    execute on passengers run kill @s
    kill @s
