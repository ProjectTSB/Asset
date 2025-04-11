#> asset:object/2175.tiamat_ice_vfx/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2175.tiamat_ice_vfx/tick/

# 演出
    particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 5
    particle flash ~ ~1 ~ 0.5 2 0.5 0.5 3
    particle dust 0.851 0.667 1 4 ~ ~2 ~ 2 3 2 0.5 10

# 消滅
    execute on passengers run kill @s
    kill @s
