#> asset:object/2058.return_thunder/tick/thunder
#
# 雷を落とす
#
# @within function asset:object/2058.return_thunder/tick/

# 演出
    particle dust 1 1 0 1 ~ ~4 ~ 0.2 3 0.2 0 120 force @a[distance=..50]
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.2 5 force @a[distance=..50]
    execute positioned ~ ~0.2 ~ run function asset:object/2058.return_thunder/tick/vfx
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.35 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.35 0 0
