#> asset:object/2127.heiloang_ice_vfx/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2127.heiloang_ice_vfx/tick/

# 演出
    # playsound block.glass.break hostile @a ~ ~ ~ 1 1
    # particle block blue_ice ~ ~1 ~ 1.5 2 1.5 0.5 50
    # particle block blue_concrete ~ ~1 ~ 0.5 0.5 0.5 0.5 30
    # particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 15
    # particle end_rod ~ ~1 ~ 1.5 1.5 1.5 0.5 15

# 消滅
    execute on passengers run kill @s
    kill @s
