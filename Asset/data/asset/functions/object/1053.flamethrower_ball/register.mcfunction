#> asset:object/1053.flamethrower_ball/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1053/register

# 継承(オプション)
    data modify storage asset:object Extends append value 5
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1053
# フィールド(オプション)
    data modify storage asset:object Field.Motion set value 1f
    data modify storage asset:object Field.Tick set value 40
    data modify storage asset:object Field.Damage set value 1
    data modify storage asset:object Field.UserID set value -1
