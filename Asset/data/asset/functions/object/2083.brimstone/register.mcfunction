#> asset:object/2083.brimstone/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2083/register

# 継承(オプション)
    # projetcileを継承
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value 

# ID (int)
    data modify storage asset:object ID set value 2083
# フィールド(オプション)
    # data modify storage asset:object Field.myValue set value 
