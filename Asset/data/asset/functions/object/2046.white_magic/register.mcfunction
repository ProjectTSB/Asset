#> asset:object/2046.white_magic/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2046/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2046
# フィールド(オプション)
    data modify storage asset:object Field.Damage set value 1f
    data modify storage asset:object Field.Debuff set value false
    data modify storage asset:object Field.Stack set value 1
    data modify storage asset:object Field.Duration set value 60
