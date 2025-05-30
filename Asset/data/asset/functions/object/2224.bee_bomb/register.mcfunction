#> asset:object/2224.bee_bomb/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2224/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 2224
# フィールド(オプション)
    data modify storage asset:context this.Speed set value 0
    data modify storage asset:context this.Range set value 32
    data modify storage asset:context this.MovePerStep set value 0.5
