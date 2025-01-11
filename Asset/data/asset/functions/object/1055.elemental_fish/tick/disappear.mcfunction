#> asset:object/1055.elemental_fish/tick/disappear
#
# 消えるときの処理
#
# @within function asset:object/1055.elemental_fish/tick/

# 演出
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.02 10

# キル
    kill @s
