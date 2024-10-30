#> asset:object/2031.giant_pumpkin/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2031/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2031

# FaceIDが指定されてなければ自動的に1を設定
    data modify storage asset:object Field.FaceID set value 1
