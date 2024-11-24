#> asset:object/1029.barrage_spirit/tick/disapper
#
# 消滅処理
#
# @within function asset:object/1029.barrage_spirit/tick/

# 演出
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.05 10
    particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 10

# キル
    kill @s
