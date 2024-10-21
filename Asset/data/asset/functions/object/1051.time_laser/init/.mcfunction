#> asset:object/1051.time_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1051/init

# 演出
    playsound minecraft:block.bell.use player @a ~ ~ ~ 2 0.5

    particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 40
    particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0.6 49
    particle end_rod ~ ~ ~ 0 0 0 0.6 30
