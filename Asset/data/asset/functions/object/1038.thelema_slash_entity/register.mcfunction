#> asset:object/1038.thelema_slash_entity/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1038/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1038
# フィールド(オプション)
    data modify storage asset:object Field.Count set value 1
    data modify storage asset:object Field.Rotation set value [0f,0f]
