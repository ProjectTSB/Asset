#> asset:artifact/0187.chloranthy_wand/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/187/click/


# 演出
    particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..30]
    playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 20 2

# 土系ブロックを草ブロックに置換する
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace #lib:dirts