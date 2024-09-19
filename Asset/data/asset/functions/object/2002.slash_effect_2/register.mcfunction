#> asset:object/2002.slash_effect_2/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2002/register

# ID5(斬撃エフェクト抽象)を継承する
    data modify storage asset:object Extends append value 5
    function asset:object/extends

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value false
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value 2002
# フィールド
    data modify storage asset:object Field set value {item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:20353}}}
