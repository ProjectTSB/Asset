#> asset:object/1200.starlight_circle/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1200/register

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
    data modify storage asset:object ID set value 1200
# フィールド(オプション)
    data modify storage asset:object Field.Spin set value 4
    data modify storage asset:object Field.SpinCount set value 4
    data modify storage asset:object Field.FirstSpin set value true
# 表示開始までの待ち時間(tick、1以上)
    data modify storage asset:object Field.SpinInterval set value 3
# 最初・通常・最後の90度回転にかける時間(tick、1以上)
    data modify storage asset:object Field.ExpandDuration set value 12
    data modify storage asset:object Field.SpinDuration set value 16
    data modify storage asset:object Field.ShrinkDuration set value 12
# 拡大後のScale
    data modify storage asset:object Field.Scale set value [5f,5f,0f]
