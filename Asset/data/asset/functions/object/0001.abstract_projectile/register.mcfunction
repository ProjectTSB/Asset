#> asset:object/0001.abstract_projectile/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value true
# ID (int)
    data modify storage asset:object ID set value 1
# フィールド
    data modify storage asset:object Field.myValue set value []
