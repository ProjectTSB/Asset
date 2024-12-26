#> asset:object/2168.general_long_laser/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2168/register

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
    data modify storage asset:object ID set value 2168
# フィールド(オプション)
    data modify storage asset:object Field.LeftRotation set value {axis:[1f,0f,0f],angle:0}
    data modify storage asset:object Field.RightRotation set value {axis:[0f,-1f,0f],angle:0}
    data modify storage asset:object Field.Length set value 20f
    data modify storage asset:object Field.Interpolation set value 1
    data modify storage asset:object Field.Tick set value 5
    
