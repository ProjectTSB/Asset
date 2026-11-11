#> asset:artifact/1413.lighter/trigger/vfx
#
# 火柱の演出
#
# @within function
#   asset:artifact/1413.lighter/trigger/3.main
#   asset:artifact/1413.lighter/trigger/attack

# 演出
    particle flame ~ ~0.1 ~ 0.4 2.0 0.4 0.03 70 normal @a
    particle flame ~ ~1.0 ~ 0.5 0.3 0.5 0.02 25 normal @a

    particle smoke ~ ~0.1 ~ 0.4 1.8 0.4 0.02 35 normal @a
    particle lava ~ ~0.1 ~ 0.3 0.2 0.3 0.01 4 normal @a

    playsound item.firecharge.use player @a ~ ~ ~ 0.8 0.8 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1.0 0
