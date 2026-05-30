#> asset:object/2277.water_splash/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2277/register

# 継承(オプション)
    data modify storage asset:object Extends append value 2001
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 2277
# フィールド(オプション)
    data modify storage asset:object Field.Item set value {id:"minecraft:stick",Count:1b}
    data modify storage asset:object Field.Scale set value 4f
    data modify storage asset:object Field.Frames set value [20613,20614,20615,20616,20617]
    data modify storage asset:object Field.LockRotation set value true
