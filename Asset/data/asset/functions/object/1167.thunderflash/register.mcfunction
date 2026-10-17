#> asset:object/1167.thunderflash/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1167/register

# 継承(オプション)
    data modify storage asset:object Extends append value 2
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1167
# フィールド(オプション)
    data modify storage asset:object Field.UserID set value -1
    data modify storage asset:object Field.Damage set value {Min:1,Max:10}
    data modify storage asset:object Field.Delay set value 10
    data modify storage asset:object Field.Range set value 8
    data modify storage asset:object Field.Interval set value {_:0,Max:4}
