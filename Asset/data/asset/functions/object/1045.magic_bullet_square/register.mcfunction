#> asset:object/1045.magic_bullet_square/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1045/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1045
# フィールド(オプション)
    data modify storage asset:object Field.Scale set value [1d,1d,0.01d]
    data modify storage asset:object Field.Delay set value 20
    data modify storage asset:object Field.Spin set value 4
    data modify storage asset:object Field.SpinInterval set value 2
    data modify storage asset:object Field.Interpolation set value 2
    data modify storage asset:object Field.LeftRotate set value false
    # data modify storage asset:object Field.ID set value -1
