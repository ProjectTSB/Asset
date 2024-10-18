#> asset:object/2026.lastbattle_platform/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2026/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
   data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value 2026
# フィールド
    # data modify storage asset:object Field.myValue set value 