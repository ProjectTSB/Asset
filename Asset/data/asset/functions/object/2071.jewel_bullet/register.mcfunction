#> asset:object/2071.jewel_bullet/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2071/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 2071
# フィールド(オプション)
    data modify storage asset:object Field.Rotation set value [0.0f,0.0f]
