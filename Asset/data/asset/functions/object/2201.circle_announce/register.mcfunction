#> asset:object/2201.circle_announce/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2201/register

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
    data modify storage asset:object ID set value 2201
# フィールド(オプション)
    data modify storage asset:object Field.Color set value 10000
    data modify storage asset:object Field.Scale set value 1f
    data modify storage asset:object Field.Tick set value 50
