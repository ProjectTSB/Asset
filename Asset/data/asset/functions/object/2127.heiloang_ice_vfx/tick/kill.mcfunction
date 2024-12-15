#> asset:object/2127.heiloang_ice_vfx/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2127.heiloang_ice_vfx/tick/

# 演出
    particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 15
    particle end_rod ~ ~1 ~ 1.5 1.5 1.5 0.5 15
    particle flash ~ ~1 ~ 0.5 2 0.5 0.5 10
    particle dust 0.667 0.894 1 4 ~ ~2 ~ 2 3 2 0.5 20

# 消滅
    execute on passengers run kill @s
    kill @s
