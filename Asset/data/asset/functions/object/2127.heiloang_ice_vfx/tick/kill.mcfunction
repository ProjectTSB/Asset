#> asset:object/2127.heiloang_ice_vfx/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2127.heiloang_ice_vfx/tick/

# 演出
    # playsound block.glass.break hostile @a ~ ~ ~ 1 0.7
    # playsound block.glass.break hostile @a ~ ~ ~ 1 0.6
    # particle block blue_ice ~ ~1 ~ 1.5 2 1.5 0.5 50
    # particle block blue_concrete ~ ~1 ~ 0.5 0.5 0.5 0.5 30
    particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 15
    particle end_rod ~ ~1 ~ 1.5 1.5 1.5 0.5 15
    particle flash ~ ~1 ~ 0.5 2 0.5 0.5 10
    particle dust 0.667 0.894 1 4 ~ ~2 ~ 2 3 2 0.5 50

# 消滅
    execute on passengers run kill @s
    kill @s
