#> asset:object/1064.fire_of_rebirth/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1064/register

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
    data modify storage asset:object ID set value 1064
# フィールド(オプション)
    data modify storage asset:object Field set value {UserID:-1,Rotation:[0f,0f],Damage:0f}
