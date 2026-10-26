#> asset:object/1200.rune_blaster_circle/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1200/register

# 継承(オプション)
    data modify storage asset:object Extends append value 2279
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1200
# フィールド(オプション)

# 文字
    data modify storage asset:object Field.Char set value "0"
    data modify storage asset:object Field.Font set value "object/2279"
    data modify storage asset:object Field.Color set value "#737aff"
    data modify storage asset:object Field.LeftRotate set value false
    data modify storage asset:object Field.AppearDuration set value 8
    data modify storage asset:object Field.SpinDuration set value 8
    data modify storage asset:object Field.DisappearDuration set value 8
    data modify storage asset:object Field.AppearScale set value [1.3f,1.3f,0f]
# Tick = (3 + AppearDuration + SpinDuration × N + DisappearDuration) だと綺麗に消える
    data modify storage asset:object Field.Tick set value 23
