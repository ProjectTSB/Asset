#> asset:object/1058.brave_knight/tick/event/disappear
#
#
#
# @within function asset:object/1058.brave_knight/tick/

# 演出
    playsound ogg:block.smithing_table.smithing_table2 neutral @a ~ ~ ~ 1 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.05 10
    particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 10

# キル
    kill @s
