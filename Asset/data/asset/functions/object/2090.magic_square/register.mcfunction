#> asset:object/2090.magic_square/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2090/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 2090
# フィールド(オプション)
    data modify storage asset:object Field.Color set value 16777215
    data modify storage asset:object Field.Scale set value [1.0f,1.0f,1.0f]
    data modify storage asset:object Field.CMD set value 20443
