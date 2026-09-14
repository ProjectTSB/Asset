#> asset:object/1164.piece_of_creation/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1164/register

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
    data modify storage asset:object ID set value 1164
# フィールド(オプション)
    data modify storage asset:object Field.Stack set value 5
    data modify storage asset:object Field.Amount set value 0.05
    data modify storage asset:object Field.Duration set value 200
    data modify storage asset:object Field.DecreaTime set value 40
