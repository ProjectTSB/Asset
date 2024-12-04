#> asset:artifact/0322.ice_cane/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/322/click/

# 使用効果
    fill ~-5 ~-3 ~-5 ~5 ~1 ~5 blue_ice replace packed_ice
    fill ~-5 ~-3 ~-5 ~5 ~1 ~5 packed_ice replace ice
    fill ~-5 ~-3 ~-5 ~5 ~1 ~5 ice replace water[level=0]

# 演出
    particle minecraft:spit ~ ~ ~ 2 0.5 2 0.05 100
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.8 1
