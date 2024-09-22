#> asset:object/2001.slash_effect/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2001/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value 2001
# フィールド
    data modify storage asset:object Field set value {item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:20353}}}
